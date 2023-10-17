from __future__ import print_function

import torch
import torch.nn as nn
import torch.nn.functional as F
import torch._dynamo as dynamo

from transformers import AutoTokenizer, BertModel

import sys
sys.path.append('../../lib')
from torch_mlir_compile import refbackend_torchdynamo_backend


def main():
    device = torch.device("cpu")
    # The bare Bert Model transformer outputting raw hidden-states
    # without any specific head on top.
    # https://huggingface.co/docs/transformers/model_doc/bert#transformers.BertModel
    bert_model_name = "bert-base-uncased"
    model = BertModel.from_pretrained(bert_model_name).to(device)
    dynamo_callable = dynamo.optimize(refbackend_torchdynamo_backend)(model)

    tokenizer = AutoTokenizer.from_pretrained(bert_model_name)
    inputs = tokenizer("Hello, my dog is cute", return_tensors="pt")
    dynamo_callable(**inputs)

if __name__ == '__main__':
    with torch.no_grad():
        main()
