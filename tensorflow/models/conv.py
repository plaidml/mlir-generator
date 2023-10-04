import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
from tensorflow.python.pywrap_mlir import import_graphdef

class MyModel(tf.keras.Model):
    def build(self, input_shape):
        # https://www.tensorflow.org/api_docs/python/tf/keras/layers/Conv2D
        self.x = tf.keras.layers.InputLayer(input_shape=input_shape, batch_size=2)
        self.c1 = tf.keras.layers.Conv2D(2, 3, activation='relu')
        self.c2 = tf.keras.layers.Conv2D(2, 3, activation='relu', use_bias=True)
        # https://www.tensorflow.org/api_docs/python/tf/keras/layers/MaxPool2D
        self.out = tf.keras.layers.MaxPool2D(pool_size=(23, 23), strides=(1, 1))

    def call(self, x):
        x = self.x(x)
        x = self.c1(x)
        x = self.c2(x)
        x = self.out(x)
        return x


if __name__ == "__main__":
    # NHWC shape
    input_shape=(2, 28, 28, 3)

    model = MyModel(tf.TensorSpec(shape=input_shape, dtype=tf.float32))

    # model.compile(optimizer='sgd', loss='mse')
    # model.fit(
    #     tf.constant(tf.ones(shape=input_shape), dtype=tf.float32),
    #     tf.constant(tf.ones(shape=(2, 2), dtype=tf.float32)))

    func = tf.function(model, input_signature=[tf.TensorSpec(shape=input_shape, dtype=tf.float32)])
    concrete_func = func.get_concrete_function(
        tf.constant(tf.ones(shape=input_shape, dtype=tf.float32))
    )

    graph = concrete_func.graph.as_graph_def()
    mlir_tf = import_graphdef(
        graph,
        "tf-standard-pipeline",
        False,
        input_names=["args_0:0"],
        input_data_types=["DT_FLOAT"],
        input_data_shapes=["2,28,28,3"],
        output_names=["Identity:0"],
    )
    print(mlir_tf)