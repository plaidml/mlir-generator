# Implements the torch_mlir compiler steps into multiple MLIR outputs

from typing import List

import torch
import torch_mlir
from torch_mlir.dynamo import make_simple_dynamo_backend
from torch_mlir_e2e_test.linalg_on_tensors_backends import refbackend

def torch_mlir_compile(model, input, output_formats=['torch', 'linalg-on-tensors', 'tosa', 'stablehlo']):
    pass
    module = None
    for format in output_formats:
        module = torch_mlir.compile(model, input, output_type=format)
        print(format, "\n", module.operation.get_asm(large_elements_limit=10))
    # Returning one of MLIR modules so that TorchDynamo can call the object.
    # Otherwise, TorchDynamo does not get invoked.
    # TorchScript models do not care for return from torch_mlir_compile.
    return module


@make_simple_dynamo_backend
def refbackend_torchdynamo_backend(fx_graph: torch.fx.GraphModule,
                                   example_inputs: List[torch.Tensor]):
    mlir_module = torch_mlir_compile(
        fx_graph, example_inputs, output_formats=['linalg-on-tensors'])
    backend = refbackend.RefBackendLinalgOnTensorsBackend()
    compiled = backend.compile(mlir_module)
    loaded = backend.load(compiled)

    def compiled_callable(*inputs):
        inputs = [x.numpy() for x in inputs]
        result = loaded.forward(*inputs)
        if not isinstance(result, tuple):
            result = torch.from_numpy(result)
        else:
            result = tuple(torch.from_numpy(x) for x in result)
        return result
    return compiled_callable
