module attributes {tf.versions = {bad_consumers = [], min_consumer = 0 : i32, producer = 1087 : i32}} {
  func @main(%arg0: tensor<2x16xf32>) -> tensor<2x?xf32> attributes {tf.entry_function = {control_outputs = "", inputs = "args_0:0", outputs = "Identity:0"}} {
    %0 = "tf.Placeholder"() {device = "", shape = #tf_type.shape<>} : () -> tensor<!tf_type.resource>
    %1 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %2 = "tf.MatMul"(%arg0, %1) {device = "", transpose_a = false, transpose_b = false} : (tensor<2x16xf32>, tensor<*xf32>) -> tensor<2x?xf32>
    %3 = "tf.Relu"(%2) {device = ""} : (tensor<2x?xf32>) -> tensor<2x?xf32>
    %4 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %5 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %6 = "tf.MatMul"(%3, %5) {device = "", transpose_a = false, transpose_b = false} : (tensor<2x?xf32>, tensor<*xf32>) -> tensor<2x?xf32>
    %7 = "tf.BiasAdd"(%6, %4) {data_format = "NHWC", device = ""} : (tensor<2x?xf32>, tensor<*xf32>) -> tensor<2x?xf32>
    %8 = "tf.Relu"(%7) {device = ""} : (tensor<2x?xf32>) -> tensor<2x?xf32>
    %9 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %10 = "tf.MatMul"(%8, %9) {device = "", transpose_a = false, transpose_b = false} : (tensor<2x?xf32>, tensor<*xf32>) -> tensor<2x?xf32>
    %11 = "tf.Identity"(%10) {device = ""} : (tensor<2x?xf32>) -> tensor<2x?xf32>
    return %11 : tensor<2x?xf32>
  }
}

