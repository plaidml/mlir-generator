linalg-on-tensors 
 #map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> (d0, 0, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3) -> (0, 0, d2, d3)>
module attributes {torch.debug_module_name = "_lambda"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<32x3x3x3xf32>, %arg1: tensor<32xf32>, %arg2: tensor<2x32x3x3xf32>, %arg3: tensor<2xf32>, %arg4: tensor<1x3x28x28xf32>) -> tensor<1x2x3x3xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %c0_i64 = arith.constant 0 : i64
    %0 = tensor.empty() : tensor<1x32x9x9xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg1 : tensor<32xf32>) outs(%0 : tensor<1x32x9x9xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x9x9xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<3> : vector<2xi64>} ins(%arg4, %arg0 : tensor<1x3x28x28xf32>, tensor<32x3x3x3xf32>) outs(%1 : tensor<1x32x9x9xf32>) -> tensor<1x32x9x9xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x32x9x9xf32>) outs(%0 : tensor<1x32x9x9xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = arith.cmpf ugt, %in, %cst : f32
      %20 = arith.select %19, %in, %cst : f32
      linalg.yield %20 : f32
    } -> tensor<1x32x9x9xf32>
    %4 = tensor.empty() : tensor<1x2x3x3xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg3 : tensor<2xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x2x3x3xf32>
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<3> : vector<2xi64>} ins(%3, %arg2 : tensor<1x32x9x9xf32>, tensor<2x32x3x3xf32>) outs(%5 : tensor<1x2x3x3xf32>) -> tensor<1x2x3x3xf32>
    %7 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<1x2x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = arith.cmpf ugt, %in, %cst : f32
      %20 = arith.select %19, %in, %cst : f32
      linalg.yield %20 : f32
    } -> tensor<1x2x3x3xf32>
    %8 = tensor.empty() : tensor<1x1x3x3xi64>
    %9 = linalg.fill ins(%c0_i64 : i64) outs(%8 : tensor<1x1x3x3xi64>) -> tensor<1x1x3x3xi64>
    %10 = tensor.empty() : tensor<1x1x3x3xf32>
    %11 = linalg.fill ins(%cst_0 : f32) outs(%10 : tensor<1x1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %12:2 = linalg.generic {indexing_maps = [#map1, #map3, #map3], iterator_types = ["parallel", "reduction", "parallel", "parallel"]} ins(%7 : tensor<1x2x3x3xf32>) outs(%11, %9 : tensor<1x1x3x3xf32>, tensor<1x1x3x3xi64>) {
    ^bb0(%in: f32, %out: f32, %out_1: i64):
      %19 = linalg.index 1 : index
      %20 = arith.index_cast %19 : index to i64
      %21 = arith.maximumf %in, %out : f32
      %22 = arith.cmpf ogt, %in, %out : f32
      %23 = arith.select %22, %20, %out_1 : i64
      linalg.yield %21, %23 : f32, i64
    } -> (tensor<1x1x3x3xf32>, tensor<1x1x3x3xi64>)
    %13 = linalg.generic {indexing_maps = [#map2, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%7, %12#0 : tensor<1x2x3x3xf32>, tensor<1x1x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %19 = arith.subf %in, %in_1 : f32
      linalg.yield %19 : f32
    } -> tensor<1x2x3x3xf32>
    %14 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13 : tensor<1x2x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = math.exp %in : f32
      linalg.yield %19 : f32
    } -> tensor<1x2x3x3xf32>
    %15 = linalg.fill ins(%cst : f32) outs(%10 : tensor<1x1x3x3xf32>) -> tensor<1x1x3x3xf32>
    %16 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "reduction", "parallel", "parallel"]} ins(%14 : tensor<1x2x3x3xf32>) outs(%15 : tensor<1x1x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = arith.addf %in, %out : f32
      linalg.yield %19 : f32
    } -> tensor<1x1x3x3xf32>
    %17 = linalg.generic {indexing_maps = [#map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x1x3x3xf32>) outs(%10 : tensor<1x1x3x3xf32>) {
    ^bb0(%in: f32, %out: f32):
      %19 = math.log %in : f32
      linalg.yield %19 : f32
    } -> tensor<1x1x3x3xf32>
    %18 = linalg.generic {indexing_maps = [#map2, #map4, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%13, %17 : tensor<1x2x3x3xf32>, tensor<1x1x3x3xf32>) outs(%4 : tensor<1x2x3x3xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %19 = arith.subf %in, %in_1 : f32
      linalg.yield %19 : f32
    } -> tensor<1x2x3x3xf32>
    return %18 : tensor<1x2x3x3xf32>
  }
}
