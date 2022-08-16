torch 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: !torch.vtensor<[1,3,28,28],f32>) -> !torch.vtensor<[1,2,3,3],f32> {
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %true = torch.constant.bool true
    %false = torch.constant.bool false
    %0 = torch.vtensor.literal(dense<[-0.0200609025, 0.0455314666]> : tensor<2xf32>) : !torch.vtensor<[2],f32>
    %1 = torch.vtensor.literal(dense_resource<__elided__> : tensor<2x32x3x3xf32>) : !torch.vtensor<[2,32,3,3],f32>
    %2 = torch.vtensor.literal(dense_resource<__elided__> : tensor<32xf32>) : !torch.vtensor<[32],f32>
    %3 = torch.vtensor.literal(dense_resource<__elided__> : tensor<32x3x3x3xf32>) : !torch.vtensor<[32,3,3,3],f32>
    %int0 = torch.constant.int 0
    %int1 = torch.constant.int 1
    %int3 = torch.constant.int 3
    %none = torch.constant.none
    %4 = torch.prim.ListConstruct %int3, %int3 : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %7 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %8 = torch.aten.convolution %arg0, %3, %2, %4, %5, %6, %false, %7, %int1 : !torch.vtensor<[1,3,28,28],f32>, !torch.vtensor<[32,3,3,3],f32>, !torch.vtensor<[32],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,32,9,9],f32>
    %9 = torch.aten.relu %8 : !torch.vtensor<[1,32,9,9],f32> -> !torch.vtensor<[1,32,9,9],f32>
    %10 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %11 = torch.aten.convolution %9, %1, %0, %4, %5, %6, %false, %10, %int1 : !torch.vtensor<[1,32,9,9],f32>, !torch.vtensor<[2,32,3,3],f32>, !torch.vtensor<[2],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,2,3,3],f32>
    %12 = torch.aten.relu %11 : !torch.vtensor<[1,2,3,3],f32> -> !torch.vtensor<[1,2,3,3],f32>
    %values, %indices = torch.aten.max.dim %12, %int1, %true : !torch.vtensor<[1,2,3,3],f32>, !torch.int, !torch.bool -> !torch.vtensor<[1,1,3,3],f32>, !torch.vtensor<[1,1,3,3],si64>
    %13 = torch.aten.sub.Tensor %12, %values, %float1.000000e00 : !torch.vtensor<[1,2,3,3],f32>, !torch.vtensor<[1,1,3,3],f32>, !torch.float -> !torch.vtensor<[1,2,3,3],f32>
    %14 = torch.aten.exp %13 : !torch.vtensor<[1,2,3,3],f32> -> !torch.vtensor<[1,2,3,3],f32>
    %15 = torch.prim.ListConstruct %int1 : (!torch.int) -> !torch.list<int>
    %16 = torch.aten.sum.dim_IntList %14, %15, %true, %none : !torch.vtensor<[1,2,3,3],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[1,1,3,3],f32>
    %17 = torch.aten.log %16 : !torch.vtensor<[1,1,3,3],f32> -> !torch.vtensor<[1,1,3,3],f32>
    %18 = torch.aten.sub.Tensor %13, %17, %float1.000000e00 : !torch.vtensor<[1,2,3,3],f32>, !torch.vtensor<[1,1,3,3],f32>, !torch.float -> !torch.vtensor<[1,2,3,3],f32>
    return %18 : !torch.vtensor<[1,2,3,3],f32>
  }
}

linalg-on-tensors 
 #map0 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, 0, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (0, 0, d2, d3)>
module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<1x3x28x28xf32>) -> tensor<1x2x3x3xf32> {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant dense<[-0.0200609025, 0.0455314666]> : tensor<2xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<2x32x3x3xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<32xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<32x3x3x3xf32>
    %cst_4 = arith.constant 0.000000e+00 : f32
    %cst_5 = arith.constant -3.40282347E+38 : f32
    %c0_i64 = arith.constant 0 : i64
    %0 = linalg.init_tensor [1, 32, 9, 9] : tensor<1x32x9x9xf32>
    %1 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_2 : tensor<32xf32>) outs(%0 : tensor<1x32x9x9xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<1x32x9x9xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<3> : vector<2xi64>} ins(%arg0, %cst_3 : tensor<1x3x28x28xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x9x9xf32>) -> tensor<1x32x9x9xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x32x9x9xf32>) outs(%0 : tensor<1x32x9x9xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %19 = arith.cmpf ugt, %arg1, %cst_4 : f32
      %20 = arith.select %19, %arg1, %cst_4 : f32
      linalg.yield %20 : f32
    } -> tensor<1x32x9x9xf32>
    %4 = linalg.init_tensor [1, 2, 3, 3] : tensor<1x2x3x3xf32>
    %5 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_0 : tensor<2xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<1x2x3x3xf32>
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<3> : vector<2xi64>} ins(%3, %cst_1 : tensor<1x32x9x9xf32>, tensor<2x32x3x3xf32>) outs(%5 : tensor<1x2x3x3xf32>) -> tensor<1x2x3x3xf32>
    %7 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<1x2x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %19 = arith.cmpf ugt, %arg1, %cst_4 : f32
      %20 = arith.select %19, %arg1, %cst_4 : f32
      linalg.yield %20 : f32
    } -> tensor<1x2x3x3xf32>
    %8 = linalg.init_tensor [1, 1, 3, 3] : tensor<1x1x3x3xi64>
    %9 = linalg.fill ins(%c0_i64 : i64) outs(%8 : tensor<1x1x3x3xi64>) -> tensor<1x1x3x3xi64>
    %10 = linalg.init_tensor [1, 1, 3, 3] : tensor<1x1x3x3xf32>
    %11 = linalg.fill ins(%cst_5 : f32) outs(%10 : tensor<1x1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %12:2 = linalg.generic {indexing_maps = [#map1, #map3, #map3], iterator_types = ["parallel", "reduction", "parallel", "parallel"]} ins(%7 : tensor<1x2x3x3xf32>) outs(%11, %9 : tensor<1x1x3x3xf32>, tensor<1x1x3x3xi64>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i64):
      %19 = linalg.index 1 : index
      %20 = arith.index_cast %19 : index to i64
      %21 = arith.cmpf ogt, %arg1, %arg2 : f32
      %22 = arith.select %21, %arg1, %arg2 : f32
      %23 = arith.select %21, %20, %arg3 : i64
      linalg.yield %22, %23 : f32, i64
    } -> (tensor<1x1x3x3xf32>, tensor<1x1x3x3xi64>)
    %13 = linalg.generic {indexing_maps = [#map2, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %12#0 : tensor<1x2x3x3xf32>, tensor<1x1x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %19 = arith.truncf %cst : f64 to f32
      %20 = arith.mulf %arg2, %19 : f32
      %21 = arith.subf %arg1, %20 : f32
      linalg.yield %21 : f32
    } -> tensor<1x2x3x3xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x2x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %19 = math.exp %arg1 : f32
      linalg.yield %19 : f32
    } -> tensor<1x2x3x3xf32>
    %15 = linalg.fill ins(%cst_4 : f32) outs(%10 : tensor<1x1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "reduction", "parallel", "parallel"]} ins(%14 : tensor<1x2x3x3xf32>) outs(%15 : tensor<1x1x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %19 = arith.addf %arg1, %arg2 : f32
      linalg.yield %19 : f32
    } -> tensor<1x1x3x3xf32>
    %17 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x1x3x3xf32>) outs(%10 : tensor<1x1x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %19 = math.log %arg1 : f32
      linalg.yield %19 : f32
    } -> tensor<1x1x3x3xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %17 : tensor<1x2x3x3xf32>, tensor<1x1x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %19 = arith.truncf %cst : f64 to f32
      %20 = arith.mulf %arg2, %19 : f32
      %21 = arith.subf %arg1, %20 : f32
      linalg.yield %21 : f32
    } -> tensor<1x2x3x3xf32>
    return %18 : tensor<1x2x3x3xf32>
  }
}

tosa 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<1x3x28x28xf32>) -> tensor<1x2x3x3xf32> {
    %0 = "tosa.const"() {value = dense<[-0.0200609025, 0.0455314666]> : tensor<2xf32>} : () -> tensor<2xf32>
    %1 = "tosa.const"() {value = dense_resource<__elided__> : tensor<2x32x3x3xf32>} : () -> tensor<2x32x3x3xf32>
    %2 = "tosa.const"() {value = dense_resource<__elided__> : tensor<32xf32>} : () -> tensor<32xf32>
    %3 = "tosa.const"() {value = dense_resource<__elided__> : tensor<32x3x3x3xf32>} : () -> tensor<32x3x3x3xf32>
    %4 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %5 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %6 = "tosa.transpose"(%arg0, %4) : (tensor<1x3x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x3xf32>
    %7 = "tosa.transpose"(%3, %4) : (tensor<32x3x3x3xf32>, tensor<4xi32>) -> tensor<32x3x3x3xf32>
    %8 = "tosa.conv2d"(%6, %7, %2) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [3, 3]} : (tensor<1x28x28x3xf32>, tensor<32x3x3x3xf32>, tensor<32xf32>) -> tensor<1x9x9x32xf32>
    %9 = "tosa.transpose"(%8, %5) : (tensor<1x9x9x32xf32>, tensor<4xi32>) -> tensor<1x32x9x9xf32>
    %10 = "tosa.clamp"(%9) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x32x9x9xf32>) -> tensor<1x32x9x9xf32>
    %11 = "tosa.transpose"(%10, %4) : (tensor<1x32x9x9xf32>, tensor<4xi32>) -> tensor<1x9x9x32xf32>
    %12 = "tosa.transpose"(%1, %4) : (tensor<2x32x3x3xf32>, tensor<4xi32>) -> tensor<2x3x3x32xf32>
    %13 = "tosa.conv2d"(%11, %12, %0) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [3, 3]} : (tensor<1x9x9x32xf32>, tensor<2x3x3x32xf32>, tensor<2xf32>) -> tensor<1x3x3x2xf32>
    %14 = "tosa.transpose"(%13, %5) : (tensor<1x3x3x2xf32>, tensor<4xi32>) -> tensor<1x2x3x3xf32>
    %15 = "tosa.clamp"(%14) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x2x3x3xf32>) -> tensor<1x2x3x3xf32>
    %16 = "tosa.reduce_max"(%15) {axis = 1 : i64} : (tensor<1x2x3x3xf32>) -> tensor<1x1x3x3xf32>
    %17 = "tosa.sub"(%15, %16) : (tensor<1x2x3x3xf32>, tensor<1x1x3x3xf32>) -> tensor<1x2x3x3xf32>
    %18 = "tosa.exp"(%17) : (tensor<1x2x3x3xf32>) -> tensor<1x2x3x3xf32>
    %19 = "tosa.reduce_sum"(%18) {axis = 1 : i64} : (tensor<1x2x3x3xf32>) -> tensor<1x1x3x3xf32>
    %20 = "tosa.log"(%19) : (tensor<1x1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %21 = "tosa.sub"(%17, %20) : (tensor<1x2x3x3xf32>, tensor<1x1x3x3xf32>) -> tensor<1x2x3x3xf32>
    return %21 : tensor<1x2x3x3xf32>
  }
}

mhlo 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<1x3x28x28xf32>) -> tensor<1x2x3x3xf32> {
    %0 = mhlo.constant dense<0.000000e+00> : tensor<1x2x3x3xf32>
    %1 = mhlo.constant dense<[[[-0.0200609025]], [[0.0455314666]]]> : tensor<2x1x1xf32>
    %2 = mhlo.constant dense<0.000000e+00> : tensor<1x32x9x9xf32>
    %3 = mhlo.constant dense_resource<__elided__> : tensor<32x1x1xf32>
    %4 = mhlo.constant dense<0.000000e+00> : tensor<f32>
    %5 = mhlo.constant dense<0> : tensor<i64>
    %6 = mhlo.constant dense<-3.40282347E+38> : tensor<f32>
    %7 = mhlo.constant dense_resource<__elided__> : tensor<32x3x3x3xf32>
    %8 = mhlo.constant dense_resource<__elided__> : tensor<2x32x3x3xf32>
    %9 = mhlo.convolution(%arg0, %7) dim_numbers = [b, f, 0, 1]x[o, i, 0, 1]->[b, f, 0, 1], window = {stride = [3, 3], pad = [[0, 0], [0, 0]], rhs_dilate = [1, 1]} {batch_group_count = 1 : i64, feature_group_count = 1 : i64} : (tensor<1x3x28x28xf32>, tensor<32x3x3x3xf32>) -> tensor<1x32x9x9xf32>
    %10 = "mhlo.broadcast_in_dim"(%3) {broadcast_dimensions = dense<[1, 2, 3]> : tensor<3xi64>} : (tensor<32x1x1xf32>) -> tensor<1x32x9x9xf32>
    %11 = mhlo.add %9, %10 : tensor<1x32x9x9xf32>
    %12 = mhlo.maximum %11, %2 : tensor<1x32x9x9xf32>
    %13 = mhlo.convolution(%12, %8) dim_numbers = [b, f, 0, 1]x[o, i, 0, 1]->[b, f, 0, 1], window = {stride = [3, 3], pad = [[0, 0], [0, 0]], rhs_dilate = [1, 1]} {batch_group_count = 1 : i64, feature_group_count = 1 : i64} : (tensor<1x32x9x9xf32>, tensor<2x32x3x3xf32>) -> tensor<1x2x3x3xf32>
    %14 = "mhlo.broadcast_in_dim"(%1) {broadcast_dimensions = dense<[1, 2, 3]> : tensor<3xi64>} : (tensor<2x1x1xf32>) -> tensor<1x2x3x3xf32>
    %15 = mhlo.add %13, %14 : tensor<1x2x3x3xf32>
    %16 = mhlo.maximum %15, %0 : tensor<1x2x3x3xf32>
    %17 = "mhlo.iota"() {iota_dimension = 0 : i64} : () -> tensor<2xi64>
    %18 = "mhlo.broadcast_in_dim"(%17) {broadcast_dimensions = dense<1> : tensor<1xi64>} : (tensor<2xi64>) -> tensor<1x2x3x3xi64>
    %19:2 = mhlo.reduce(%16 init: %6), (%18 init: %5) across dimensions = [1] : (tensor<1x2x3x3xf32>, tensor<1x2x3x3xi64>, tensor<f32>, tensor<i64>) -> (tensor<1x3x3xf32>, tensor<1x3x3xi64>)
     reducer(%arg1: tensor<f32>, %arg3: tensor<f32>) (%arg2: tensor<i64>, %arg4: tensor<i64>)  {
      %29 = mhlo.compare  GE, %arg1, %arg3,  FLOAT : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %30 = "mhlo.select"(%29, %arg1, %arg3) : (tensor<i1>, tensor<f32>, tensor<f32>) -> tensor<f32>
      %31 = mhlo.compare  EQ, %arg1, %arg3,  FLOAT : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %32 = mhlo.minimum %arg2, %arg4 : tensor<i64>
      %33 = "mhlo.select"(%29, %arg2, %arg4) : (tensor<i1>, tensor<i64>, tensor<i64>) -> tensor<i64>
      %34 = "mhlo.select"(%31, %32, %33) : (tensor<i1>, tensor<i64>, tensor<i64>) -> tensor<i64>
      mhlo.return %30, %34 : tensor<f32>, tensor<i64>
    }
    %20 = mhlo.reshape %19#0 : (tensor<1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %21 = "mhlo.broadcast_in_dim"(%20) {broadcast_dimensions = dense<[0, 1, 2, 3]> : tensor<4xi64>} : (tensor<1x1x3x3xf32>) -> tensor<1x2x3x3xf32>
    %22 = mhlo.subtract %16, %21 : tensor<1x2x3x3xf32>
    %23 = mhlo.exponential %22 : tensor<1x2x3x3xf32>
    %24 = mhlo.reduce(%23 init: %4) applies mhlo.add across dimensions = [1] : (tensor<1x2x3x3xf32>, tensor<f32>) -> tensor<1x3x3xf32>
    %25 = mhlo.reshape %24 : (tensor<1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %26 = mhlo.log %25 : tensor<1x1x3x3xf32>
    %27 = "mhlo.broadcast_in_dim"(%26) {broadcast_dimensions = dense<[0, 1, 2, 3]> : tensor<4xi64>} : (tensor<1x1x3x3xf32>) -> tensor<1x2x3x3xf32>
    %28 = mhlo.subtract %22, %27 : tensor<1x2x3x3xf32>
    return %28 : tensor<1x2x3x3xf32>
  }
}

