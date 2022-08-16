from __future__ import print_function

import torch
import torch.nn as nn
import torch.nn.functional as F

import sys
sys.path.append('../lib')
from torch_mlir_compile import torch_mlir_compile

class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.conv1 = nn.Conv2d(3, 32, 3, 3)
        self.conv2 = nn.Conv2d(32, 2, 3, 3)

    def forward(self, x):
            x = self.conv1(x)
            x = F.relu(x)
            x = self.conv2(x)
            x = F.relu(x)
            output = F.log_softmax(x, dim=1)
            return output

def main():
    device = torch.device("cpu")
    simple = Net().to(device)
    # Any other dialect segfaults
    torch_mlir_compile(simple, torch.ones(1, 3, 28, 28))

if __name__ == '__main__':
    main()
