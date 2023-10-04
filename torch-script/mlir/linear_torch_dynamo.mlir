linalg-on-tensors 
 #map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1, d0)>
#map2 = affine_map<(d0, d1) -> (d1)>
#map3 = affine_map<(d0, d1) -> (d0, 0)>
module attributes {torch.debug_module_name = "GraphModule"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<256x128xf32>, %arg1: tensor<256xf32>, %arg2: tensor<10x256xf32>, %arg3: tensor<10xf32>, %arg4: tensor<2x128xf32>) -> (tensor<2x10xf32>, tensor<2x128xf32>, tensor<2x256xf32>, tensor<256x10xf32>, tensor<2x10xf32>, tensor<2x10xf32>) {
    %c0_i64 = arith.constant 0 : i64
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %0 = tensor.empty() : tensor<128x256xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel"]} ins(%arg0 : tensor<256x128xf32>) outs(%0 : tensor<128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256xf32>
    %2 = tensor.empty() : tensor<2x256xf32>
    %3 = linalg.fill ins(%cst : f32) outs(%2 : tensor<2x256xf32>) -> tensor<2x256xf32>
    %4 = linalg.matmul ins(%arg4, %1 : tensor<2x128xf32>, tensor<128x256xf32>) outs(%3 : tensor<2x256xf32>) -> tensor<2x256xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg1, %4 : tensor<256xf32>, tensor<2x256xf32>) outs(%2 : tensor<2x256xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %25 = arith.addf %in, %in_1 : f32
      linalg.yield %25 : f32
    } -> tensor<2x256xf32>
    %6 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%5 : tensor<2x256xf32>) outs(%2 : tensor<2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = arith.cmpf ugt, %in, %cst : f32
      %26 = arith.select %25, %in, %cst : f32
      linalg.yield %26 : f32
    } -> tensor<2x256xf32>
    %7 = tensor.empty() : tensor<256x10xf32>
    %8 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel"]} ins(%arg2 : tensor<10x256xf32>) outs(%7 : tensor<256x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x10xf32>
    %9 = tensor.empty() : tensor<2x10xf32>
    %10 = linalg.fill ins(%cst : f32) outs(%9 : tensor<2x10xf32>) -> tensor<2x10xf32>
    %11 = linalg.matmul ins(%6, %8 : tensor<2x256xf32>, tensor<256x10xf32>) outs(%10 : tensor<2x10xf32>) -> tensor<2x10xf32>
    %12 = linalg.generic {indexing_maps = [#map2, #map, #map], iterator_types = ["parallel", "parallel"]} ins(%arg3, %11 : tensor<10xf32>, tensor<2x10xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %25 = arith.addf %in, %in_1 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%12 : tensor<2x10xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = arith.cmpf ugt, %in, %cst : f32
      %26 = arith.select %25, %in, %cst : f32
      linalg.yield %26 : f32
    } -> tensor<2x10xf32>
    %14 = tensor.empty() : tensor<2x1xi64>
    %15 = linalg.fill ins(%c0_i64 : i64) outs(%14 : tensor<2x1xi64>) -> tensor<2x1xi64>
    %16 = tensor.empty() : tensor<2x1xf32>
    %17 = linalg.fill ins(%cst_0 : f32) outs(%16 : tensor<2x1xf32>) -> tensor<2x1xf32>
    %18:2 = linalg.generic {indexing_maps = [#map, #map3, #map3], iterator_types = ["parallel", "reduction"]} ins(%13 : tensor<2x10xf32>) outs(%17, %15 : tensor<2x1xf32>, tensor<2x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_1: i64):
      %25 = linalg.index 1 : index
      %26 = arith.index_cast %25 : index to i64
      %27 = arith.maximumf %in, %out : f32
      %28 = arith.cmpf ogt, %in, %out : f32
      %29 = arith.select %28, %26, %out_1 : i64
      linalg.yield %27, %29 : f32, i64
    } -> (tensor<2x1xf32>, tensor<2x1xi64>)
    %19 = linalg.generic {indexing_maps = [#map, #map3, #map], iterator_types = ["parallel", "parallel"]} ins(%13, %18#0 : tensor<2x10xf32>, tensor<2x1xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %25 = arith.subf %in, %in_1 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%19 : tensor<2x10xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = math.exp %in : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %21 = linalg.fill ins(%cst : f32) outs(%16 : tensor<2x1xf32>) -> tensor<2x1xf32>
    %22 = linalg.generic {indexing_maps = [#map, #map3], iterator_types = ["parallel", "reduction"]} ins(%20 : tensor<2x10xf32>) outs(%21 : tensor<2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = arith.addf %in, %out : f32
      linalg.yield %25 : f32
    } -> tensor<2x1xf32>
    %23 = linalg.generic {indexing_maps = [#map3, #map], iterator_types = ["parallel", "parallel"]} ins(%22 : tensor<2x1xf32>) outs(%16 : tensor<2x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = math.log %in : f32
      linalg.yield %25 : f32
    } -> tensor<2x1xf32>
    %24 = linalg.generic {indexing_maps = [#map, #map3, #map], iterator_types = ["parallel", "parallel"]} ins(%19, %23 : tensor<2x10xf32>, tensor<2x1xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %in_1: f32, %out: f32):
      %25 = arith.subf %in, %in_1 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    return %24, %arg4, %6, %8, %13, %24 : tensor<2x10xf32>, tensor<2x128xf32>, tensor<2x256xf32>, tensor<256x10xf32>, tensor<2x10xf32>, tensor<2x10xf32>
  }
}

