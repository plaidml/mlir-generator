import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import subprocess
import tensorflow as tf
from tensorflow import keras
import iree.compiler

def create_model():
  model = tf.keras.Sequential([
    keras.layers.Dense(32, activation='relu', input_shape=(2,16)),
    keras.layers.Dense(10)
  ])

  model.compile(optimizer='adam',
                loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
                metrics=[tf.keras.metrics.SparseCategoricalAccuracy()])

  return model

# Global path options
ROOT = os.path.realpath(os.path.join(os.path.dirname(__file__), '..'))
SAVED = os.path.join(ROOT, ".saved", "linear")
MLIR = os.path.join(ROOT, "mlir", "linear.mlir")

# Create a basic model instance and
# save, so that IREE can load it
model = create_model()
model.summary()
tf.saved_model.save(model, SAVED)

# Call iree importer
subprocess.call(['iree-import-tf',
                 '--tf-import-type=savedmodel_v1',
                 '--tf-savedmodel-exported-names=serving_default',
                 SAVED,
                 '-o',
                 MLIR])
