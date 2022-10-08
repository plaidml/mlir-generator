# Ref: https://www.tensorflow.org/guide/intro_to_modules
import driver

import tensorflow as tf

# TODO: Make these into command-line arguments
BATCH_SIZE = 1
INPUT_LEN = 128
HIDDEN_LEN = 256
OUTPUT_LEN = 10
NUM_LAYERS = 1

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
    driver.build_module(SequentialModule(), ["predict"])
