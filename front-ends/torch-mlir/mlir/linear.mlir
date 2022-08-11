torch 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: !torch.vtensor<[2,128],f32>) -> !torch.vtensor<[2,10],f32> {
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %true = torch.constant.bool true
    %0 = torch.vtensor.literal(dense<[-0.0332389176, -0.0606467798, -0.00846566259, 0.00292211771, -0.0320931375, 0.0611905307, 0.0548969656, -0.037005052, -0.0607765764, 0.00599184632]> : tensor<10xf32>) : !torch.vtensor<[10],f32>
    %1 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<10x256xf32>) : !torch.vtensor<[10,256],f32>
    %2 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %3 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128xf32>) : !torch.vtensor<[256,128],f32>
    %int1 = torch.constant.int 1
    %none = torch.constant.none
    %4 = torch.aten.linear %arg0, %3, %2 : !torch.vtensor<[2,128],f32>, !torch.vtensor<[256,128],f32>, !torch.vtensor<[256],f32> -> !torch.vtensor<[2,256],f32>
    %5 = torch.aten.relu %4 : !torch.vtensor<[2,256],f32> -> !torch.vtensor<[2,256],f32>
    %6 = torch.aten.linear %5, %1, %0 : !torch.vtensor<[2,256],f32>, !torch.vtensor<[10,256],f32>, !torch.vtensor<[10],f32> -> !torch.vtensor<[2,10],f32>
    %7 = torch.aten.relu %6 : !torch.vtensor<[2,10],f32> -> !torch.vtensor<[2,10],f32>
    %values, %indices = torch.aten.max.dim %7, %int1, %true : !torch.vtensor<[2,10],f32>, !torch.int, !torch.bool -> !torch.vtensor<[2,1],f32>, !torch.vtensor<[2,1],si64>
    %8 = torch.aten.sub.Tensor %7, %values, %float1.000000e00 : !torch.vtensor<[2,10],f32>, !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,10],f32>
    %9 = torch.aten.exp %8 : !torch.vtensor<[2,10],f32> -> !torch.vtensor<[2,10],f32>
    %10 = torch.prim.ListConstruct %int1 : (!torch.int) -> !torch.list<int>
    %11 = torch.aten.sum.dim_IntList %9, %10, %true, %none : !torch.vtensor<[2,10],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[2,1],f32>
    %12 = torch.aten.log %11 : !torch.vtensor<[2,1],f32> -> !torch.vtensor<[2,1],f32>
    %13 = torch.aten.sub.Tensor %8, %12, %float1.000000e00 : !torch.vtensor<[2,10],f32>, !torch.vtensor<[2,1],f32>, !torch.float -> !torch.vtensor<[2,10],f32>
    return %13 : !torch.vtensor<[2,10],f32>
  }
}

linalg-on-tensors 
 #map0 = affine_map<(d0, d1) -> (d1)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#map2 = affine_map<(d0, d1) -> (d1, d0)>
#map3 = affine_map<(d0, d1) -> (d0, 0)>
module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant dense<[-0.0332389176, -0.0606467798, -0.00846566259, 0.00292211771, -0.0320931375, 0.0611905307, 0.0548969656, -0.037005052, -0.0607765764, 0.00599184632]> : tensor<10xf32>
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

tosa 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %0 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<10x256xf32>} : () -> tensor<10x256xf32>
    %1 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128xf32>} : () -> tensor<256x128xf32>
    %2 = "tosa.const"() {value = dense<[1, 0]> : tensor<2xi32>} : () -> tensor<2xi32>
    %3 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256xf32>} : () -> tensor<1x256xf32>
    %4 = "tosa.const"() {value = dense<[[-0.0332389176, -0.0606467798, -0.00846566259, 0.00292211771, -0.0320931375, 0.0611905307, 0.0548969656, -0.037005052, -0.0607765764, 0.00599184632]]> : tensor<1x10xf32>} : () -> tensor<1x10xf32>
    %5 = "tosa.transpose"(%1, %2) : (tensor<256x128xf32>, tensor<2xi32>) -> tensor<128x256xf32>
    %6 = "tosa.reshape"(%arg0) {new_shape = [1, 2, 128]} : (tensor<2x128xf32>) -> tensor<1x2x128xf32>
    %7 = "tosa.reshape"(%5) {new_shape = [1, 128, 256]} : (tensor<128x256xf32>) -> tensor<1x128x256xf32>
    %8 = "tosa.matmul"(%6, %7) : (tensor<1x2x128xf32>, tensor<1x128x256xf32>) -> tensor<1x2x256xf32>
    %9 = "tosa.reshape"(%8) {new_shape = [2, 256]} : (tensor<1x2x256xf32>) -> tensor<2x256xf32>
    %10 = "tosa.add"(%9, %3) : (tensor<2x256xf32>, tensor<1x256xf32>) -> tensor<2x256xf32>
    %11 = "tosa.clamp"(%10) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x256xf32>) -> tensor<2x256xf32>
    %12 = "tosa.transpose"(%0, %2) : (tensor<10x256xf32>, tensor<2xi32>) -> tensor<256x10xf32>
    %13 = "tosa.reshape"(%11) {new_shape = [1, 2, 256]} : (tensor<2x256xf32>) -> tensor<1x2x256xf32>
    %14 = "tosa.reshape"(%12) {new_shape = [1, 256, 10]} : (tensor<256x10xf32>) -> tensor<1x256x10xf32>
    %15 = "tosa.matmul"(%13, %14) : (tensor<1x2x256xf32>, tensor<1x256x10xf32>) -> tensor<1x2x10xf32>
    %16 = "tosa.reshape"(%15) {new_shape = [2, 10]} : (tensor<1x2x10xf32>) -> tensor<2x10xf32>
    %17 = "tosa.add"(%16, %4) : (tensor<2x10xf32>, tensor<1x10xf32>) -> tensor<2x10xf32>
    %18 = "tosa.clamp"(%17) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<2x10xf32>) -> tensor<2x10xf32>
    %19 = "tosa.reduce_max"(%18) {axis = 1 : i64} : (tensor<2x10xf32>) -> tensor<2x1xf32>
    %20 = "tosa.sub"(%18, %19) : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
    %21 = "tosa.exp"(%20) : (tensor<2x10xf32>) -> tensor<2x10xf32>
    %22 = "tosa.reduce_sum"(%21) {axis = 1 : i64} : (tensor<2x10xf32>) -> tensor<2x1xf32>
    %23 = "tosa.log"(%22) : (tensor<2x1xf32>) -> tensor<2x1xf32>
    %24 = "tosa.sub"(%20, %23) : (tensor<2x10xf32>, tensor<2x1xf32>) -> tensor<2x10xf32>
    return %24 : tensor<2x10xf32>
  }
}

mhlo 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: tensor<2x128xf32>) -> tensor<2x10xf32> {
    %0 = mhlo.constant dense<0.000000e+00> : tensor<2x10xf32>
    %1 = mhlo.constant dense<0.000000e+00> : tensor<2x256xf32>
    %2 = mhlo.constant dense<0.000000e+00> : tensor<f32>
    %3 = mhlo.constant dense<0> : tensor<i64>
    %4 = mhlo.constant dense<-3.40282347E+38> : tensor<f32>
    %5 = mhlo.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128xf32>
    %6 = mhlo.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %7 = mhlo.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<10x256xf32>
    %8 = mhlo.constant dense<[-0.0332389176, -0.0606467798, -0.00846566259, 0.00292211771, -0.0320931375, 0.0611905307, 0.0548969656, -0.037005052, -0.0607765764, 0.00599184632]> : tensor<10xf32>
    %9 = "mhlo.transpose"(%5) {permutation = dense<[1, 0]> : tensor<2xi64>} : (tensor<256x128xf32>) -> tensor<128x256xf32>
    %10 = "mhlo.dot"(%arg0, %9) : (tensor<2x128xf32>, tensor<128x256xf32>) -> tensor<2x256xf32>
    %11 = "mhlo.broadcast_in_dim"(%6) {broadcast_dimensions = dense<1> : tensor<1xi64>} : (tensor<256xf32>) -> tensor<2x256xf32>
    %12 = mhlo.add %10, %11 : tensor<2x256xf32>
    %13 = mhlo.maximum %12, %1 : tensor<2x256xf32>
    %14 = "mhlo.transpose"(%7) {permutation = dense<[1, 0]> : tensor<2xi64>} : (tensor<10x256xf32>) -> tensor<256x10xf32>
    %15 = "mhlo.dot"(%13, %14) : (tensor<2x256xf32>, tensor<256x10xf32>) -> tensor<2x10xf32>
    %16 = "mhlo.broadcast_in_dim"(%8) {broadcast_dimensions = dense<1> : tensor<1xi64>} : (tensor<10xf32>) -> tensor<2x10xf32>
    %17 = mhlo.add %15, %16 : tensor<2x10xf32>
    %18 = mhlo.maximum %17, %0 : tensor<2x10xf32>
    %19 = "mhlo.iota"() {iota_dimension = 0 : i64} : () -> tensor<10xi64>
    %20 = "mhlo.broadcast_in_dim"(%19) {broadcast_dimensions = dense<1> : tensor<1xi64>} : (tensor<10xi64>) -> tensor<2x10xi64>
    %21:2 = mhlo.reduce(%18 init: %4), (%20 init: %3) across dimensions = [1] : (tensor<2x10xf32>, tensor<2x10xi64>, tensor<f32>, tensor<i64>) -> (tensor<2xf32>, tensor<2xi64>)
     reducer(%arg1: tensor<f32>, %arg3: tensor<f32>) (%arg2: tensor<i64>, %arg4: tensor<i64>)  {
      %31 = "mhlo.compare"(%arg1, %arg3) {compare_type = #mhlo<comparison_type FLOAT>, comparison_direction = #mhlo<comparison_direction GE>} : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %32 = "mhlo.select"(%31, %arg1, %arg3) : (tensor<i1>, tensor<f32>, tensor<f32>) -> tensor<f32>
      %33 = "mhlo.compare"(%arg1, %arg3) {compare_type = #mhlo<comparison_type FLOAT>, comparison_direction = #mhlo<comparison_direction EQ>} : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %34 = mhlo.minimum %arg2, %arg4 : tensor<i64>
      %35 = "mhlo.select"(%31, %arg2, %arg4) : (tensor<i1>, tensor<i64>, tensor<i64>) -> tensor<i64>
      %36 = "mhlo.select"(%33, %34, %35) : (tensor<i1>, tensor<i64>, tensor<i64>) -> tensor<i64>
      "mhlo.return"(%32, %36) : (tensor<f32>, tensor<i64>) -> ()
    }
    %22 = "mhlo.reshape"(%21#0) : (tensor<2xf32>) -> tensor<2x1xf32>
    %23 = "mhlo.broadcast_in_dim"(%22) {broadcast_dimensions = dense<[0, 1]> : tensor<2xi64>} : (tensor<2x1xf32>) -> tensor<2x10xf32>
    %24 = mhlo.subtract %18, %23 : tensor<2x10xf32>
    %25 = mhlo.exponential %24 : tensor<2x10xf32>
    %26 = mhlo.reduce(%25 init: %2) applies mhlo.add across dimensions = [1] : (tensor<2x10xf32>, tensor<f32>) -> tensor<2xf32>
    %27 = "mhlo.reshape"(%26) : (tensor<2xf32>) -> tensor<2x1xf32>
    %28 = mhlo.log %27 : tensor<2x1xf32>
    %29 = "mhlo.broadcast_in_dim"(%28) {broadcast_dimensions = dense<[0, 1]> : tensor<2xi64>} : (tensor<2x1xf32>) -> tensor<2x10xf32>
    %30 = mhlo.subtract %24, %29 : tensor<2x10xf32>
    return %30 : tensor<2x10xf32>
  }
}

