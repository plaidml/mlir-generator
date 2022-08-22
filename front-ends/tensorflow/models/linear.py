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

    def call(self, x):
        x = self.x(x)
        x = self.d1(x)
        x = self.d2(x)
        x = self.out(x)
        return x


def test_model_class():
    print("Preparing a model as its own class")
    # See: https://github.com/tensorflow/tensorflow/issues/50521
    model = MyModel(tf.TensorSpec(shape=(2,16), dtype=tf.float32))

    print("First make sure that the model has the right shape, and input flows through output")
    # https://www.tensorflow.org/api_docs/python/tf/keras/Sequential
    model.compile(optimizer='sgd', loss='mse')
    model.fit(
        tf.constant(tf.ones(shape=(2, 16)), dtype=tf.float32),
        tf.constant(tf.ones(shape=(2, 10), dtype=tf.float32)))

    print("Now, trying to create an MLIR module with (1)[2, 16] as input")
    # https://www.tensorflow.org/api_docs/python/tf/function#input_signatures_2
    func = tf.function(model, input_signature=[tf.TensorSpec(shape=(2, 16), dtype=tf.float32)])
    concrete_func = func.get_concrete_function(
        tf.constant(tf.ones(shape=(2, 16), dtype=tf.float32))
    )

    # Basically what convert_graph_def should do
    # This works!
    graph = concrete_func.graph.as_graph_def()
    mlir_tf = import_graphdef(
        graph,
        "tf-standard-pipeline",
        False,
        input_names=["args_0:0"],
        input_data_types=["DT_FLOAT"],
        input_data_shapes=["2,16"],
        output_names=["Identity:0"],
    )
    print(mlir_tf)


def test_sequential():
    print("Preparing a model as a keras.Sequential")
    # Ref: https://www.tensorflow.org/api_docs/python/tf/keras/layers/Dense
    model = tf.keras.models.Sequential()
    model.add(tf.keras.layers.InputLayer(input_shape=(16,), batch_size=2))
    model.add(tf.keras.layers.Dense(32, activation='relu'))
    model.add(tf.keras.layers.Dense(32, activation='relu', use_bias=True))
    model.add(tf.keras.layers.Dense(10))
    print(model.output_shape) # (2, 10)
    model.build((2, 16))
    print(len(model.weights))

    print("First make sure that the model has the right shape, and input flows through output")
    # https://www.tensorflow.org/api_docs/python/tf/keras/Sequential
    model.compile(optimizer='sgd', loss='mse')
    model.fit(
        tf.constant(tf.ones(shape=(2, 16)), dtype=tf.float32),
        tf.constant(tf.ones(shape=(2, 10), dtype=tf.float32)))

    # This doesn't work, but should...
    print("Now, trying to create an MLIR module with (1)[2, 16] as input")
    # https://www.tensorflow.org/api_docs/python/tf/function#input_signatures_2
    func = tf.function(model, input_signature=[tf.TensorSpec(shape=(2 ,16,), dtype=tf.float32)])
    concrete_func = func.get_concrete_function(
        tf.constant(tf.ones(shape=(2, 16), dtype=tf.float32))
    )
    graph = concrete_func.graph.as_graph_def()
    # https://www.tensorflow.org/api_docs/python/tf/mlir/experimental/convert_graph_def
    print(tf.mlir.experimental.convert_graph_def(graph, show_debug_info=False))

if __name__ == "__main__":
    test_model_class()

    test_sequential()