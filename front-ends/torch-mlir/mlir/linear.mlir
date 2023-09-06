torch 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: !torch.vtensor<[2,128],f32>) -> !torch.vtensor<[2,10],f32> {
    %true = torch.constant.bool true
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %none = torch.constant.none
    %int0 = torch.constant.int 0
    %int1 = torch.constant.int 1
    %0 = torch.vtensor.literal(dense<[0.030073069, -0.00633022189, 3.07992101E-4, 0.0396411791, -0.0485531315, -2.76342034E-5, 0.0205513164, -0.0391363725, 0.0608757138, -5.853670e-02]> : tensor<10xf32>) : !torch.vtensor<[10],f32>
    %1 = torch.vtensor.literal(dense_resource<__elided__> : tensor<10x256xf32>) : !torch.vtensor<[10,256],f32>
    %2 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %3 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256x128xf32>) : !torch.vtensor<[256,128],f32>
    %4 = torch.aten.transpose.int %3, %int0, %int1 : !torch.vtensor<[256,128],f32>, !torch.int, !torch.int -> !torch.vtensor<[128,256],f32>
    %5 = torch.aten.mm %arg0, %4 : !torch.vtensor<[2,128],f32>, !torch.vtensor<[128,256],f32> -> !torch.vtensor<[2,256],f32>
    %6 = torch.aten.add.Tensor %5, %2, %float1.000000e00 : !torch.vtensor<[2,256],f32>, !torch.vtensor<[256],f32>, !torch.float -> !torch.vtensor<[2,256],f32>
    %7 = torch.aten.relu %6 : !torch.vtensor<[2,256],f32> -> !torch.vtensor<[2,256],f32>
    %8 = torch.aten.transpose.int %1, %int0, %int1 : !torch.vtensor<[10,256],f32>, !torch.int, !torch.int -> !torch.vtensor<[256,10],f32>
    %9 = torch.aten.mm %7, %8 : !torch.vtensor<[2,256],f32>, !torch.vtensor<[256,10],f32> -> !torch.vtensor<[2,10],f32>
    %10 = torch.aten.add.Tensor %9, %0, %float1.000000e00 : !torch.vtensor<[2,10],f32>, !torch.vtensor<[10],f32>, !torch.float -> !torch.vtensor<[2,10],f32>
    %11 = torch.aten.relu %10 : !torch.vtensor<[2,10],f32> -> !torch.vtensor<[2,10],f32>
    %values, %indices = torch.aten.max.dim %11, %int1, %true : !torch.vtensor<[2,10],f32>, !torch.int, !torch.bool -> !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],si64>
    %12 = torch.aten.sub.Tensor %11, %values, %float1.000000e00 : !torch.vtensor<[2,10],f32>, !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,10],f32>
    %13 = torch.aten.exp %12 : !torch.vtensor<[2,10],f32> -> !torch.vtensor<[2,10],f32>
    %14 = torch.prim.ListConstruct %int1 : (!torch.int) -> !torch.list<int>
    %15 = torch.aten.sum.dim_IntList %13, %14, %true, %none : !torch.vtensor<[2,10],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[2,1],f32>
    %16 = torch.aten.log %15 : !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,1],f32>
    %17 = torch.aten.sub.Tensor %12, %16, %float1.000000e00 : !torch.vtensor<[2,10],f32>, !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,10],f32>
    return %17 : !torch.vtensor<[2,10],f32>
  }
}

linalg-on-tensors 
 #map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d1, d0)>
#map2 = affine_map<(d0, d1) -> (d1)>
#map3 = affine_map<(d0, d1) -> (d0, 0)>
module attributes {torch.debug_module_name = "Net"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %c0_i64 = arith.constant 0 : i64
    %cst = arith.constant dense<[0.030073069, -0.00633022189, 3.07992101E-4, 0.0396411791, -0.0485531315, -2.76342034E-5, 0.0205513164, -0.0391363725, 0.0608757138, -5.853670e-02]> : tensor<10xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<10x256xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<256x128xf32>
    %cst_3 = arith.constant 0.000000e+00 : f32
    %cst_4 = arith.constant 0xFF800000 : f32
    %0 = tensor.empty() : tensor<128x256xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst_2 : tensor<256x128xf32>) outs(%0 : tensor<128x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x256xf32>
    %2 = tensor.empty() : tensor<2x256xf32>
    %3 = linalg.fill ins(%cst_3 : f32) outs(%2 : tensor<2x256xf32>) -> tensor<2x256xf32>
    %4 = linalg.matmul ins(%arg0, %1 : tensor<2x128xf32>, tensor<128x256xf32>) outs(%3 : tensor<2x256xf32>) -> tensor<2x256xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map2, #map], iterator_types = ["parallel", "parallel"]} ins(%4, %cst_1 : tensor<2x256xf32>, tensor<256xf32>) outs(%2 : tensor<2x256xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %25 = arith.addf %in, %in_5 : f32
      linalg.yield %25 : f32
    } -> tensor<2x256xf32>
    %6 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%5 : tensor<2x256xf32>) outs(%2 : tensor<2x256xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = arith.cmpf ugt, %in, %cst_3 : f32
      %26 = arith.select %25, %in, %cst_3 : f32
      linalg.yield %26 : f32
    } -> tensor<2x256xf32>
    %7 = tensor.empty() : tensor<256x10xf32>
    %8 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<10x256xf32>) outs(%7 : tensor<256x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<256x10xf32>
    %9 = tensor.empty() : tensor<2x10xf32>
    %10 = linalg.fill ins(%cst_3 : f32) outs(%9 : tensor<2x10xf32>) -> tensor<2x10xf32>
    %11 = linalg.matmul ins(%6, %8 : tensor<2x256xf32>, tensor<256x10xf32>) outs(%10 : tensor<2x10xf32>) -> tensor<2x10xf32>
    %12 = linalg.generic {indexing_maps = [#map, #map2, #map], iterator_types = ["parallel", "parallel"]} ins(%11, %cst : tensor<2x10xf32>, tensor<10xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %25 = arith.addf %in, %in_5 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %13 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%12 : tensor<2x10xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = arith.cmpf ugt, %in, %cst_3 : f32
      %26 = arith.select %25, %in, %cst_3 : f32
      linalg.yield %26 : f32
    } -> tensor<2x10xf32>
    %14 = tensor.empty() : tensor<2x1xi64>
    %15 = linalg.fill ins(%c0_i64 : i64) outs(%14 : tensor<2x1xi64>) -> tensor<2x1xi64>
    %16 = tensor.empty() : tensor<2x1xf32>
    %17 = linalg.fill ins(%cst_4 : f32) outs(%16 : tensor<2x1xf32>) -> tensor<2x1xf32>
    %18:2 = linalg.generic {indexing_maps = [#map, #map3, #map3], iterator_types = ["parallel", "reduction"]} ins(%13 : tensor<2x10xf32>) outs(%17, %15 : tensor<2x1xf32>, tensor<2x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_5: i64):
      %25 = linalg.index 1 : index
      %26 = arith.index_cast %25 : index to i64
      %27 = arith.maxf %in, %out : f32
      %28 = arith.cmpf ogt, %in, %out : f32
      %29 = arith.select %28, %26, %out_5 : i64
      linalg.yield %27, %29 : f32, i64
    } -> (tensor<2x1xf32>, tensor<2x1xi64>)
    %19 = linalg.generic {indexing_maps = [#map, #map3, #map], iterator_types = ["parallel", "parallel"]} ins(%13, %18#0 : tensor<2x10xf32>, tensor<2x1xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %25 = arith.subf %in, %in_5 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %20 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel"]} ins(%19 : tensor<2x10xf32>) outs(%9 : tensor<2x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %25 = math.exp %in : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    %21 = linalg.fill ins(%cst_3 : f32) outs(%16 : tensor<2x1xf32>) -> tensor<2x1xf32>
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
    ^bb0(%in: f32, %in_5: f32, %out: f32):
      %25 = arith.subf %in, %in_5 : f32
      linalg.yield %25 : f32
    } -> tensor<2x10xf32>
    return %24 : tensor<2x10xf32>
  }
}

tosa 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %0 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<10x256xf32>}> : () -> tensor<10x256xf32>
    %1 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x128xf32>}> : () -> tensor<256x128xf32>
    %2 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %3 = "tosa.const"() <{value = dense<[[0.030073069, -0.00633022189, 3.07992101E-4, 0.0396411791, -0.0485531315, -2.76342034E-5, 0.0205513164, -0.0391363725, 0.0608757138, -5.853670e-02]]> : tensor<1x10xf32>}> : () -> tensor<1x10xf32>
    %4 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256xf32>}> : () -> tensor<1x256xf32>
    %5 = "tosa.transpose"(%1, %2) : (tensor<256x128xf32>, tensor<2xi32>) -> tensor<128x256xf32>
    %6 = "tosa.reshape"(%arg0) <{new_shape = array<i64: 1, 2, 128>}> : (tensor<2x128xf32>) -> tensor<1x2x128xf32>
    %7 = "tosa.reshape"(%5) <{new_shape = array<i64: 1, 128, 256>}> : (tensor<128x256xf32>) -> tensor<1x128x256xf32>
    %8 = "tosa.matmul"(%6, %7) : (tensor<1x2x128xf32>, tensor<1x128x256xf32>) -> tensor<1x2x256xf32>
    %9 = "tosa.reshape"(%8) <{new_shape = array<i64: 2, 256>}> : (tensor<1x2x256xf32>) -> tensor<2x256xf32>
    %10 = "tosa.add"(%9, %4) : (tensor<2x256xf32>, tensor<1x256xf32>) -> tensor<2x256xf32>
    %11 = "tosa.clamp"(%10) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<2x256xf32>) -> tensor<2x256xf32>
    %12 = "tosa.transpose"(%0, %2) : (tensor<10x256xf32>, tensor<2xi32>) -> tensor<256x10xf32>
    %13 = "tosa.reshape"(%11) <{new_shape = array<i64: 1, 2, 256>}> : (tensor<2x256xf32>) -> tensor<1x2x256xf32>
    %14 = "tosa.reshape"(%12) <{new_shape = array<i64: 1, 256, 10>}> : (tensor<256x10xf32>) -> tensor<1x256x10xf32>
    %15 = "tosa.matmul"(%13, %14) : (tensor<1x2x256xf32>, tensor<1x256x10xf32>) -> tensor<1x2x10xf32>
    %16 = "tosa.reshape"(%15) <{new_shape = array<i64: 2, 10>}> : (tensor<1x2x10xf32>) -> tensor<2x10xf32>
    %17 = "tosa.add"(%16, %3) : (tensor<2x10xf32>, tensor<1x10xf32>) -> tensor<2x10xf32>
    %18 = "tosa.clamp"(%17) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<2x10xf32>) -> tensor<2x10xf32>
    %19 = "tosa.reduce_max"(%18) <{axis = 1 : i64}> : (tensor<2x10xf32>) -> tensor<2x1xf32>
    %20 = "tosa.sub"(%18, %19) : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
    %21 = "tosa.exp"(%20) : (tensor<2x10xf32>) -> tensor<2x10xf32>
    %22 = "tosa.reduce_sum"(%21) <{axis = 1 : i64}> : (tensor<2x10xf32>) -> tensor<2x1xf32>
    %23 = "tosa.log"(%22) : (tensor<2x1xf32>) -> tensor<2x1xf32>
    %24 = "tosa.sub"(%20, %23) : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
    return %24 : tensor<2x10xf32>
  }
}

stablehlo 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %0 = stablehlo.constant dense<[0.030073069, -0.00633022189, 3.07992101E-4, 0.0396411791, -0.0485531315, -2.76342034E-5, 0.0205513164, -0.0391363725, 0.0608757138, -5.853670e-02]> : tensor<10xf32>
    %1 = stablehlo.constant dense_resource<__elided__> : tensor<10x256xf32>
    %2 = stablehlo.constant dense_resource<__elided__> : tensor<256xf32>
    %3 = stablehlo.constant dense_resource<__elided__> : tensor<256x128xf32>
    %4 = stablehlo.constant dense<0xFF800000> : tensor<f32>
    %5 = stablehlo.constant dense<0> : tensor<i64>
    %6 = stablehlo.constant dense<0.000000e+00> : tensor<f32>
    %7 = chlo.constant dense<0.000000e+00> : tensor<2x256xf32>
    %8 = chlo.constant dense<0.000000e+00> : tensor<2x10xf32>
    %cst = arith.constant dense<[2, 10]> : tensor<2xi64>
    %cst_0 = arith.constant dense<[2, 1]> : tensor<2xi64>
    %9 = stablehlo.transpose %3, dims = [1, 0] : (tensor<256x128xf32>) -> tensor<128x256xf32>
    %10 = stablehlo.dot %arg0, %9 : (tensor<2x128xf32>, tensor<128x256xf32>) -> tensor<2x256xf32>
    %11 = chlo.broadcast_add %10, %2 : (tensor<2x256xf32>, tensor<256xf32>) -> tensor<2x256xf32>
    %12 = stablehlo.maximum %11, %7 : tensor<2x256xf32>
    %13 = stablehlo.transpose %1, dims = [1, 0] : (tensor<10x256xf32>) -> tensor<256x10xf32>
    %14 = stablehlo.dot %12, %13 : (tensor<2x256xf32>, tensor<256x10xf32>) -> tensor<2x10xf32>
    %15 = chlo.broadcast_add %14, %0 : (tensor<2x10xf32>, tensor<10xf32>) -> tensor<2x10xf32>
    %16 = stablehlo.maximum %15, %8 : tensor<2x10xf32>
    %17 = stablehlo.dynamic_iota %cst, dim = 1 : (tensor<2xi64>) -> tensor<2x10xi64>
    %18:2 = stablehlo.reduce(%16 init: %4), (%17 init: %5) across dimensions = [1] : (tensor<2x10xf32>, tensor<2x10xi64>, tensor<f32>, tensor<i64>) -> (tensor<2xf32>, tensor<2xi64>)
     reducer(%arg1: tensor<f32>, %arg3: tensor<f32>) (%arg2: tensor<i64>, %arg4: tensor<i64>)  {
      %26 = stablehlo.compare  GE, %arg1, %arg3,  FLOAT : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %27 = stablehlo.select %26, %arg1, %arg3 : tensor<i1>, tensor<f32>
      %28 = stablehlo.compare  EQ, %arg1, %arg3,  FLOAT : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %29 = stablehlo.minimum %arg2, %arg4 : tensor<i64>
      %30 = stablehlo.select %26, %arg2, %arg4 : tensor<i1>, tensor<i64>
      %31 = stablehlo.select %28, %29, %30 : tensor<i1>, tensor<i64>
      stablehlo.return %27, %31 : tensor<f32>, tensor<i64>
    }
    %19 = stablehlo.dynamic_reshape %18#0, %cst_0 : (tensor<2xf32>, tensor<2xi64>) -> tensor<2x1xf32>
    %20 = chlo.broadcast_subtract %16, %19 : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
    %21 = stablehlo.exponential %20 : tensor<2x10xf32>
    %22 = stablehlo.reduce(%21 init: %6) applies stablehlo.add across dimensions = [1] : (tensor<2x10xf32>, tensor<f32>) -> tensor<2xf32>
    %23 = stablehlo.dynamic_reshape %22, %cst_0 : (tensor<2xf32>, tensor<2xi64>) -> tensor<2x1xf32>
    %24 = stablehlo.log %23 : tensor<2x1xf32>
    %25 = chlo.broadcast_subtract %20, %24 : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
    return %25 : tensor<2x10xf32>
  }
}

