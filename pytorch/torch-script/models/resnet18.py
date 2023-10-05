import torch
import torchvision

import sys
sys.path.append('../../lib')
from torch_mlir_compile import torch_mlir_compile

resnet18 = torchvision.models.resnet18(weights=torchvision.models.resnet.ResNet18_Weights.IMAGENET1K_V1)
resnet18.eval()

torch_mlir_compile(resnet18, torch.ones(1, 3, 224, 224),['torch', 'linalg-on-tensors', 'tosa'])