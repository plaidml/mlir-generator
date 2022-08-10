import torch
import torchvision

import torch_mlir

resnet18 = torchvision.models.resnet18(pretrained=True)
resnet18.eval()

module = torch_mlir.compile(resnet18, torch.ones(1, 3, 224, 224), output_type="torch")
print("TORCH OutputType\n", module.operation.get_asm(large_elements_limit=10))
module = torch_mlir.compile(resnet18, torch.ones(1, 3, 224, 224), output_type="linalg-on-tensors")
print("LINALG_ON_TENSORS OutputType\n", module.operation.get_asm(large_elements_limit=10))
# TODO: Debug why this is so slow.
module = torch_mlir.compile(resnet18, torch.ones(1, 3, 224, 224), output_type="tosa")
print("TOSA OutputType\n", module.operation.get_asm(large_elements_limit=10))