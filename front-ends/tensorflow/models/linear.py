# See: https://github.com/tensorflow/tensorflow/issues/50521
import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
import tensorflow as tf
from tensorflow.python.pywrap_mlir import import_graphdef

class MyModel(tf.keras.Model):
    def build(self, input_shape):
        self.x = tf.keras.layers.InputLayer(input_shape=input_shape, batch_size=2)
        self.d1 = tf.keras.layers.Dense(32, activation='relu')
        self.d2 = tf.keras.layers.Dense(32, activation='relu', use_bias=True)
        self.out = tf.keras.layers.Dense(10)

    def call(self, input):
        x = self.x(input)
        x = self.d1(x)
        x = self.d2(x)
        x = self.out(x)
        return x

if __name__ == "__main__":
    ready_model = MyModel(tf.TensorSpec(shape=(2 ,16,), dtype=tf.float32))
    ready_func = tf.function(ready_model, input_signature=[tf.TensorSpec(shape=(2 ,16,), dtype=tf.float32)])
    ready_concrete_func = ready_func.get_concrete_function(
        tf.constant(tf.ones(shape=(2, 16), dtype=tf.float32))
    )
    ready_graph = ready_concrete_func.graph.as_graph_def()
    # https://www.tensorflow.org/api_docs/python/tf/mlir/experimental/convert_graph_def
    print(tf.mlir.experimental.convert_graph_def(ready_graph, show_debug_info=False))

    # Ref: https://www.tensorflow.org/api_docs/python/tf/keras/layers/Dense
    model = tf.keras.models.Sequential()
    model.add(tf.keras.layers.InputLayer(input_shape=(16,), batch_size=2))
    model.add(tf.keras.layers.Dense(32, activation='relu'))
    model.add(tf.keras.layers.Dense(32, activation='relu', use_bias=True))
    model.add(tf.keras.layers.Dense(10))
    print(model.output_shape) # (2, 10)
    model.build((2, 16))
    print(len(model.weights))
    model.compile(optimizer='sgd', loss='mse')

    # https://www.tensorflow.org/api_docs/python/tf/function#input_signatures_2
    func = tf.function(model, input_signature=[tf.TensorSpec(shape=(2 ,16,), dtype=tf.float32)])
    concrete_func = func.get_concrete_function(
        tf.constant(tf.ones(shape=(2, 16), dtype=tf.float32))
    )
    graph = concrete_func.graph.as_graph_def()
    # https://www.tensorflow.org/api_docs/python/tf/mlir/experimental/convert_graph_def
    print(tf.mlir.experimental.convert_graph_def(graph, show_debug_info=False))

    # mlir_tf = import_graphdef(
    #     graph,
    #     "tf-standard-pipeline",
    #     False,
    #     input_names=["input"],
    #     input_data_types=["DT_FLOAT"],
    #     input_data_shapes=["2,16"],
    #     output_names=["output"],
    # )
    # print(mlir_tf)
