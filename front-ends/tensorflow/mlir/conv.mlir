module attributes {tf.versions = {bad_consumers = [], min_consumer = 0 : i32, producer = 1087 : i32}} {
  func @main(%arg0: tensor<2x28x28x3xf32>) -> tensor<2x?x?x?xf32> attributes {tf.entry_function = {control_outputs = "", inputs = "args_0:0", outputs = "Identity:0"}} {
    %0 = "tf.Placeholder"() {device = "", shape = #tf_type.shape<>} : () -> tensor<!tf_type.resource>
    %1 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %2 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %3 = "tf.Conv2D"(%arg0, %2) {data_format = "NHWC", device = "", dilations = [1, 1, 1, 1], explicit_paddings = [], padding = "VALID", strides = [1, 1, 1, 1], use_cudnn_on_gpu = true} : (tensor<2x28x28x3xf32>, tensor<*xf32>) -> tensor<2x?x?x?xf32>
    %4 = "tf.BiasAdd"(%3, %1) {data_format = "NHWC", device = ""} : (tensor<2x?x?x?xf32>, tensor<*xf32>) -> tensor<2x?x?x?xf32>
    %5 = "tf.Relu"(%4) {device = ""} : (tensor<2x?x?x?xf32>) -> tensor<2x?x?x?xf32>
    %6 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %7 = "tf.ReadVariableOp"(%0) {device = ""} : (tensor<!tf_type.resource>) -> tensor<*xf32>
    %8 = "tf.Conv2D"(%5, %7) {data_format = "NHWC", device = "", dilations = [1, 1, 1, 1], explicit_paddings = [], padding = "VALID", strides = [1, 1, 1, 1], use_cudnn_on_gpu = true} : (tensor<2x?x?x?xf32>, tensor<*xf32>) -> tensor<2x?x?x?xf32>
    %9 = "tf.BiasAdd"(%8, %6) {data_format = "NHWC", device = ""} : (tensor<2x?x?x?xf32>, tensor<*xf32>) -> tensor<2x?x?x?xf32>
    %10 = "tf.Relu"(%9) {device = ""} : (tensor<2x?x?x?xf32>) -> tensor<2x?x?x?xf32>
    %11 = "tf.MaxPool"(%10) {data_format = "NHWC", device = "", explicit_paddings = [], ksize = [1, 23, 23, 1], padding = "VALID", strides = [1, 1, 1, 1]} : (tensor<2x?x?x?xf32>) -> tensor<2x?x?x?xf32>
    %12 = "tf.Identity"(%11) {device = ""} : (tensor<2x?x?x?xf32>) -> tensor<2x?x?x?xf32>
    return %12 : tensor<2x?x?x?xf32>
  }
}

