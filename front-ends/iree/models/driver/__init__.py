# Stolen from https://github.com/iree-org/iree-samples/blob/main/ModelCompiler/nlp_models/bert_small_run.py
from iree import runtime as ireert
from iree.tf.support import module_utils
from iree.compiler import tf as tfc
from iree.compiler import compile_str
import sys
from absl import app
import time

def build_module(model, exports):
    # Compile the model using IREE
    compiler_module = tfc.compile_module(model, exported_names = exports, import_only=True)
    backend = "llvm-cpu"
    args = ["--iree-llvm-target-cpu-features=host",
            "--iree-mhlo-demote-i64-to-i32=false",
            "--iree-flow-demote-i64-to-i32",
            "--mlir-print-ir-after=iree-mhlo-to-linalg-on-tensors"]
    backend_config = "local-task"
    flatbuffer_blob = compile_str(compiler_module, target_backends=[backend], extra_args=args, input_type="mhlo")
