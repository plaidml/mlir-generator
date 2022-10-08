# Ref: https://github.com/iree-org/iree-samples/blob/main/ModelCompiler/nlp_models/huggingface_MiniLM_run.py
import driver

import tensorflow as tf
from transformers import ResNetForImageClassification

# TODO: Make these into command-line arguments
BATCH_SIZE = 1
H = 224
W = 224
C = 3

# Create a set of 2-dimensional inputs
resnet_input = [tf.TensorSpec(shape=[BATCH_SIZE,H,W,C],dtype=tf.int32)]

class ResnetModule(tf.Module):
    def __init__(self):
        super(ResnetModule, self).__init__()
        # Create a Resnet trainer with the created network.
        self.m = ResNetForImageClassification.from_pretrained("microsoft/resnet-18")

        # Invoke the trainer model on the inputs. This causes the layer to be built.
        self.m.predict = lambda x: self.m(input=x, training=False)

    # FIXME: This isn't working
    @tf.function(input_signature=resnet_input)
    def predict(self, input):
        return self.m.predict(*input)

if __name__ == "__main__":
    driver.build_module(ResnetModule(), ["predict"])
