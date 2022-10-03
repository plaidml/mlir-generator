# Stolen from https://github.com/iree-org/iree-samples/blob/main/ModelCompiler/nlp_models/bert_small_run.py
from iree import runtime as ireert
from iree.tf.support import module_utils
from iree.compiler import tf as tfc
from iree.compiler import compile_str
import sys
from absl import app
import time

import numpy as np
import os
import tempfile
import tensorflow as tf

BATCH_SIZE = 1
INPUT_LEN = 128
HIDDEN_LEN = 256
OUTPUT_LEN = 10
NUM_LAYERS = 1

# Ref: https://www.tensorflow.org/guide/intro_to_modules
class Dense(tf.Module):
  def __init__(self, in_features, out_features, name=None):
    super().__init__(name=name)
    self.w = tf.Variable(
      tf.random.normal([in_features, out_features]), name='w')
    self.b = tf.Variable(tf.zeros([out_features]), name='b')
  def __call__(self, x):
    y = tf.matmul(x, self.w) + self.b
    return tf.nn.relu(y)

class SequentialModule(tf.Module):
    def __init__(self, name=None):
        super().__init__(name=name)
        self.input_layer = Dense(in_features=INPUT_LEN, out_features=HIDDEN_LEN)
        self.layers = []
        for layer in range(NUM_LAYERS):
            self.layers.append(Dense(in_features=HIDDEN_LEN, out_features=HIDDEN_LEN))
        self.output_layer = Dense(in_features=HIDDEN_LEN, out_features=OUTPUT_LEN)

    @tf.function(input_signature=[[tf.TensorSpec(shape=[BATCH_SIZE,INPUT_LEN],dtype=tf.float32)]])
    def predict(self, x):
        x = self.input_layer(x)
        for layer in range(NUM_LAYERS):
            x = self.layers[layer](x)
        x = self.output_layer(x)
        return tf.nn.softmax(x)

if __name__ == "__main__":
    # Compile the model using IREE
    compiler_module = tfc.compile_module(SequentialModule(), exported_names = ["predict"], import_only=True)
    backend = "llvm-cpu"
    args = ["--iree-llvm-target-cpu-features=host", "--iree-mhlo-demote-i64-to-i32=false", "--iree-flow-demote-i64-to-i32"]
    backend_config = "local-task"
    flatbuffer_blob = compile_str(compiler_module, target_backends=[backend], extra_args=args, input_type="mhlo")

    # Save module as MLIR file in a directory
    vm_module = ireert.VmModule.from_flatbuffer(flatbuffer_blob)
    tracer = ireert.Tracer(os.getcwd())
    config = ireert.Config("local-task",tracer)
    ctx = ireert.SystemContext(config=config)
    ctx.add_vm_module(vm_module)
    compiled = ctx.modules.module
    predict_sample_input = [np.random.randint(5, size=(BATCH_SIZE,INPUT_LEN))]
    learn_sample_input = [predict_sample_input, np.random.randint(5, size=(BATCH_SIZE))]
    warmup = 5
    total_iter = 10
    num_iter = total_iter - warmup
    for i in range(10):
        if(i == warmup-1):
            start = time.time()
        print(compiled.learn(predict_sample_input,np.random.randint(5, size=(BATCH_SIZE))))
    end = time.time()
    total_time = end - start
    print("time: "+str(total_time))
    print("time/iter: "+str(total_time/num_iter))
