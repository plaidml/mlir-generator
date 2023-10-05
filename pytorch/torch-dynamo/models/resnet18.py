import torch
import torchvision
import torch._dynamo as dynamo

import sys
sys.path.append('../../lib')
from torch_mlir_compile import refbackend_torchdynamo_backend

resnet18 = torchvision.models.resnet18(weights=torchvision.models.resnet.ResNet18_Weights.IMAGENET1K_V1)
resnet18.eval()

dynamo_callable = dynamo.optimize(refbackend_torchdynamo_backend)(resnet18)
dynamo_callable(torch.ones(1, 3, 224, 224))
