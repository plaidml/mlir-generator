# Implements the torch_mlir compiler steps into multiple MLIR outputs

import torch
import torch_mlir

def torch_mlir_compile(model, input, output_formats=['torch', 'linalg-on-tensors', 'tosa', 'stablehlo']):
    pass
    for format in output_formats:
        module = torch_mlir.compile(model, input, output_type=format)
        print(format, "\n", module.operation.get_asm(large_elements_limit=10))