from __future__ import print_function

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch._dynamo as dynamo

import sys
sys.path.append('../../lib')
from torch_mlir_compile import refbackend_torchdynamo_backend


class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.fc1 = nn.Linear(128, 256)
        self.fc2 = nn.Linear(256, 10)

    def forward(self, x):
            x = self.fc1(x)
            x = F.relu(x)
            x = self.fc2(x)
            x = F.relu(x)
            output = F.log_softmax(x, dim=1)
            return output


def main():
    device = torch.device("cpu")
    simple = Net().to(device)
    dynamo_callable = dynamo.optimize(refbackend_torchdynamo_backend)(simple)
    dynamo_callable(torch.ones(2, 128))

if __name__ == '__main__':
    with torch.no_grad():
        main()
