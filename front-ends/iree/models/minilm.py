# Ref: https://github.com/iree-org/iree-samples/blob/main/ModelCompiler/nlp_models/huggingface_MiniLM_run.py
import numpy as np
import driver

import numpy as np
import os
import tempfile
import tensorflow as tf

import time
from transformers import BertModel, BertTokenizer, TFBertModel

# TODO: Make these into command-line arguments
MAX_SEQUENCE_LENGTH = 512
BATCH_SIZE = 1

# Create a set of 2-dimensional inputs
bert_input = [tf.TensorSpec(shape=[BATCH_SIZE,MAX_SEQUENCE_LENGTH],dtype=tf.int32),
            tf.TensorSpec(shape=[BATCH_SIZE,MAX_SEQUENCE_LENGTH], dtype=tf.int32),
            tf.TensorSpec(shape=[BATCH_SIZE,MAX_SEQUENCE_LENGTH], dtype=tf.int32)]

class BertModule(tf.Module):
    def __init__(self):
        super(BertModule, self).__init__()
        # Create a BERT trainer with the created network.
        self.m = TFBertModel.from_pretrained("microsoft/MiniLM-L12-H384-uncased", from_pt=True)

        # Invoke the trainer model on the inputs. This causes the layer to be built.
        self.m.predict = lambda x,y,z: self.m.call(input_ids=x, attention_mask=y, token_type_ids=z, training=False)

    @tf.function(input_signature=bert_input)
    def predict(self, input_ids, attention_mask, token_type_ids):
        return self.m.predict(input_ids, attention_mask, token_type_ids)

if __name__ == "__main__":
    driver.build_module(BertModule(), ["predict"])
