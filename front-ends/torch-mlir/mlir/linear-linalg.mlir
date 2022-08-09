#map0 = affine_map<(d0, d1) -> (d1)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1, d0)>
#map3 = affine_map<(d0, d1) -> (d0, 0)>
module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant dense<[0.0324810967, -0.0126106814, -0.0104555413, -0.0361788198, -0.0510280579, 0.0537375212, -0.0112992674, 0.0203299597, 0.0365288779, -0.0514795408]> : tensor<10xf32>
    %cst_1 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<10x256xf32>
    %cst_2 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_3 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128xf32>
    %cst_4 = arith.constant 0.000000e+00 : f32
    %c0_i64 = arith.constant 0 : i64
    %cst_5 = arith.constant -3.40282347E+38 : f32
    %0 = linalg.init_tensor [2, 256] : tensor<2x256xf32>
    %1 = linalg.init_tensor [128, 256] : tensor<128x256xf32>
    %2 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<256xf32>) outs(%0 : tensor<2x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<2x256xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst_3 : tensor<256x128xf32>) outs(%1 : tensor<128x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<128x256xf32>
    %4 = linalg.matmul ins(%arg0, %3 : tensor<2x128xf32>, tensor<128x256xf32>) outs(%2 : tensor<2x256xf32>) -> tensor<2x256xf32>
    %5 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%4 : tensor<2x256xf32>) outs(%0 : tensor<2x256xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %23 = arith.cmpf ugt, %arg1, %cst_4 : f32
      %24 = arith.select %23, %arg1, %cst_4 : f32
      linalg.yield %24 : f32
    } -> tensor<2x256xf32>
    %6 = linalg.init_tensor [2, 10] : tensor<2x10xf32>
    %7 = linalg.init_tensor [256, 10] : tensor<256x10xf32>
    %8 = linalg.generic {indexing_maps = [#map0, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<10xf32>) outs(%6 : tensor<2x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<2x10xf32>
    %9 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst_1 : tensor<10x256xf32>) outs(%7 : tensor<256x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<256x10xf32>
    %10 = linalg.matmul ins(%5, %9 : tensor<2x256xf32>, tensor<256x10xf32>) outs(%8 : tensor<2x10xf32>) -> tensor<2x10xf32>
    %11 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%10 : tensor<2x10xf32>) outs(%6 : tensor<2x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %23 = arith.cmpf ugt, %arg1, %cst_4 : f32
      %24 = arith.select %23, %arg1, %cst_4 : f32
      linalg.yield %24 : f32
    } -> tensor<2x10xf32>
    %12 = linalg.init_tensor [2, 1] : tensor<2x1xi64>
    %13 = linalg.fill ins(%c0_i64 : i64) outs(%12 : tensor<2x1xi64>) -> tensor<2x1xi64>
    %14 = linalg.init_tensor [2, 1] : tensor<2x1xf32>
    %15 = linalg.fill ins(%cst_5 : f32) outs(%14 : tensor<2x1xf32>) -> tensor<2x1xf32>
    %16:2 = linalg.generic {indexing_maps = [#map1, #map3, #map3], iterator_types = ["parallel", "reduction"]} ins(%11 : tensor<2x10xf32>) outs(%15, %13 : tensor<2x1xf32>, tensor<2x1xi64>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: i64):
      %23 = linalg.index 1 : index
      %24 = arith.index_cast %23 : index to i64
      %25 = arith.cmpf ogt, %arg1, %arg2 : f32
      %26 = arith.select %25, %arg1, %arg2 : f32
      %27 = arith.select %25, %24, %arg3 : i64
      linalg.yield %26, %27 : f32, i64
    } -> (tensor<2x1xf32>, tensor<2x1xi64>)
    %17 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel"]} ins(%11, %16#0 : tensor<2x10xf32>, tensor<2x1xf32>) outs(%6 : tensor<2x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %23 = arith.truncf %cst : f64 to f32
      %24 = arith.mulf %arg2, %23 : f32
      %25 = arith.subf %arg1, %24 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %18 = linalg.generic {indexing_maps = [#map1, #map1], iterator_types = ["parallel", "parallel"]} ins(%17 : tensor<2x10xf32>) outs(%6 : tensor<2x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %23 = math.exp %arg1 : f32
      linalg.yield %23 : f32
    } -> tensor<2x10xf32>
    %19 = linalg.fill ins(%cst_4 : f32) outs(%14 : tensor<2x1xf32>) -> tensor<2x1xf32>
    %20 = linalg.generic {indexing_maps = [#map1, #map3], iterator_types = ["parallel", "reduction"]} ins(%18 : tensor<2x10xf32>) outs(%19 : tensor<2x1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %23 = arith.addf %arg1, %arg2 : f32
      linalg.yield %23 : f32
    } -> tensor<2x1xf32>
    %21 = linalg.generic {indexing_maps = [#map3, #map1], iterator_types = ["parallel", "parallel"]} ins(%20 : tensor<2x1xf32>) outs(%14 : tensor<2x1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %23 = math.log %arg1 : f32
      linalg.yield %23 : f32
    } -> tensor<2x1xf32>
    %22 = linalg.generic {indexing_maps = [#map1, #map3, #map1], iterator_types = ["parallel", "parallel"]} ins(%17, %21 : tensor<2x10xf32>, tensor<2x1xf32>) outs(%6 : tensor<2x10xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %23 = arith.truncf %cst : f64 to f32
      %24 = arith.mulf %arg2, %23 : f32
      %25 = arith.subf %arg1, %24 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    return %22 : tensor<2x10xf32>
  }
}

