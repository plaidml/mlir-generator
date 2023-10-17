linalg-on-tensors 
 #map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3) -> ()>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
#map6 = affine_map<(d0, d1) -> (d1)>
#map7 = affine_map<(d0, d1) -> (0, d1)>
#map8 = affine_map<(d0, d1) -> ()>
#map9 = affine_map<(d0, d1) -> (d0, 0)>
#map10 = affine_map<(d0, d1) -> (0, 0)>
module attributes {torch.debug_module_name = "_lambda"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<32x1x3x3xf32>, %arg1: tensor<32xf32>, %arg2: tensor<64x32x3x3xf32>, %arg3: tensor<64xf32>, %arg4: tensor<128x9216xf32>, %arg5: tensor<128xf32>, %arg6: tensor<10x128xf32>, %arg7: tensor<10xf32>, %arg8: tensor<1x1x28x28xf32>) -> tensor<1x10xf32> {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %c6364136223846793005_i64 = arith.constant 6364136223846793005 : i64
    %c1442695040888963407_i64 = arith.constant 1442695040888963407 : i64
    %c32_i64 = arith.constant 32 : i64
    %cst_1 = arith.constant 5.4210107999999998E-20 : f64
    %cst_2 = arith.constant 5.000000e-01 : f64
    %cst_3 = arith.constant 0.000000e+00 : f64
    %cst_4 = arith.constant 7.500000e-01 : f64
    %c0_i64 = arith.constant 0 : i64
    %c64_i64 = arith.constant 64 : i64
    %c12_i64 = arith.constant 12 : i64
    %cst_5 = arith.constant 7.500000e-01 : f32
    %c128_i64 = arith.constant 128 : i64
    %cst_6 = arith.constant 5.000000e-01 : f32
    %0 = tensor.empty() : tensor<1x32x26x26xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg1 : tensor<32xf32>) outs(%0 : tensor<1x32x26x26xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x32x26x26xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%arg8, %arg0 : tensor<1x1x28x28xf32>, tensor<32x1x3x3xf32>) outs(%1 : tensor<1x32x26x26xf32>) -> tensor<1x32x26x26xf32>
    %3 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x32x26x26xf32>) outs(%0 : tensor<1x32x26x26xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = arith.cmpf ugt, %in, %cst : f32
      %60 = arith.select %59, %in, %cst : f32
      linalg.yield %60 : f32
    } -> tensor<1x32x26x26xf32>
    %4 = tensor.empty() : tensor<1x64x24x24xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg3 : tensor<64xf32>) outs(%4 : tensor<1x64x24x24xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x24x24xf32>
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%3, %arg2 : tensor<1x32x26x26xf32>, tensor<64x32x3x3xf32>) outs(%5 : tensor<1x64x24x24xf32>) -> tensor<1x64x24x24xf32>
    %7 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<1x64x24x24xf32>) outs(%4 : tensor<1x64x24x24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = arith.cmpf ugt, %in, %cst : f32
      %60 = arith.select %59, %in, %cst : f32
      linalg.yield %60 : f32
    } -> tensor<1x64x24x24xf32>
    %8 = tensor.empty() : tensor<1x64x12x12xf32>
    %9 = linalg.fill ins(%cst_0 : f32) outs(%8 : tensor<1x64x12x12xf32>) -> tensor<1x64x12x12xf32>
    %10 = tensor.empty() : tensor<2x2xf32>
    %11 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%7, %10 : tensor<1x64x24x24xf32>, tensor<2x2xf32>) outs(%9 : tensor<1x64x12x12xf32>) -> tensor<1x64x12x12xf32>
    %12 = tensor.empty() : tensor<f64>
    %13 = linalg.fill ins(%cst_4 : f64) outs(%12 : tensor<f64>) -> tensor<f64>
    %14 = ml_program.global_load @global_seed : tensor<i64>
    %extracted = tensor.extract %14[] : tensor<i64>
    %15 = arith.muli %extracted, %c6364136223846793005_i64 : i64
    %16 = arith.addi %15, %c1442695040888963407_i64 : i64
    %inserted = tensor.insert %16 into %14[] : tensor<i64>
    ml_program.global_store @global_seed = %inserted : tensor<i64>
    %17 = tensor.empty() : tensor<1x64x12x12xf64>
    %18 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%17 : tensor<1x64x12x12xf64>) {
    ^bb0(%out: f64):
      %59 = linalg.index 0 : index
      %60 = arith.index_cast %59 : index to i64
      %61 = linalg.index 1 : index
      %62 = arith.index_cast %61 : index to i64
      %63 = linalg.index 2 : index
      %64 = arith.index_cast %63 : index to i64
      %65 = linalg.index 3 : index
      %66 = arith.index_cast %65 : index to i64
      %67 = arith.muli %60, %c64_i64 : i64
      %68 = arith.addi %67, %62 : i64
      %69 = arith.muli %68, %c12_i64 : i64
      %70 = arith.addi %69, %64 : i64
      %71 = arith.muli %70, %c12_i64 : i64
      %72 = arith.addi %71, %66 : i64
      %73 = arith.muli %72, %16 : i64
      %74 = arith.addi %73, %16 : i64
      %75 = arith.muli %73, %73 : i64
      %76 = arith.addi %75, %73 : i64
      %77 = arith.shli %76, %c32_i64 : i64
      %78 = arith.shrui %76, %c32_i64 : i64
      %79 = arith.ori %77, %78 : i64
      %80 = arith.muli %79, %79 : i64
      %81 = arith.addi %80, %74 : i64
      %82 = arith.shli %81, %c32_i64 : i64
      %83 = arith.shrui %81, %c32_i64 : i64
      %84 = arith.ori %82, %83 : i64
      %85 = arith.muli %84, %84 : i64
      %86 = arith.addi %85, %73 : i64
      %87 = arith.shli %86, %c32_i64 : i64
      %88 = arith.shrui %86, %c32_i64 : i64
      %89 = arith.ori %87, %88 : i64
      %90 = arith.muli %89, %89 : i64
      %91 = arith.addi %90, %74 : i64
      %92 = arith.shli %91, %c32_i64 : i64
      %93 = arith.shrui %91, %c32_i64 : i64
      %94 = arith.ori %92, %93 : i64
      %95 = arith.muli %94, %94 : i64
      %96 = arith.addi %95, %73 : i64
      %97 = arith.shrui %96, %c32_i64 : i64
      %98 = arith.xori %91, %97 : i64
      %99 = arith.uitofp %98 : i64 to f64
      %100 = arith.mulf %99, %cst_1 : f64
      %101 = arith.addf %100, %cst_3 : f64
      linalg.yield %101 : f64
    } -> tensor<1x64x12x12xf64>
    %19 = tensor.empty() : tensor<1x64x12x12xi1>
    %20 = linalg.generic {indexing_maps = [#map2, #map3, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %13 : tensor<1x64x12x12xf64>, tensor<f64>) outs(%19 : tensor<1x64x12x12xi1>) {
    ^bb0(%in: f64, %in_9: f64, %out: i1):
      %59 = arith.cmpf ult, %in, %in_9 : f64
      linalg.yield %59 : i1
    } -> tensor<1x64x12x12xi1>
    %21 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20 : tensor<1x64x12x12xi1>) outs(%8 : tensor<1x64x12x12xf32>) {
    ^bb0(%in: i1, %out: f32):
      %59 = arith.uitofp %in : i1 to f32
      linalg.yield %59 : f32
    } -> tensor<1x64x12x12xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %11 : tensor<1x64x12x12xf32>, tensor<1x64x12x12xf32>) outs(%8 : tensor<1x64x12x12xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %59 = arith.mulf %in, %in_9 : f32
      linalg.yield %59 : f32
    } -> tensor<1x64x12x12xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22 : tensor<1x64x12x12xf32>) outs(%8 : tensor<1x64x12x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = arith.divf %in, %cst_5 : f32
      linalg.yield %59 : f32
    } -> tensor<1x64x12x12xf32>
    %collapsed = tensor.collapse_shape %23 [[0], [1, 2, 3]] : tensor<1x64x12x12xf32> into tensor<1x9216xf32>
    %24 = tensor.empty() : tensor<9216x128xf32>
    %25 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%arg4 : tensor<128x9216xf32>) outs(%24 : tensor<9216x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<9216x128xf32>
    %26 = tensor.empty() : tensor<1x128xf32>
    %27 = linalg.fill ins(%cst : f32) outs(%26 : tensor<1x128xf32>) -> tensor<1x128xf32>
    %28 = linalg.matmul ins(%collapsed, %25 : tensor<1x9216xf32>, tensor<9216x128xf32>) outs(%27 : tensor<1x128xf32>) -> tensor<1x128xf32>
    %29 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%arg5, %28 : tensor<128xf32>, tensor<1x128xf32>) outs(%26 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %59 = arith.addf %in, %in_9 : f32
      linalg.yield %59 : f32
    } -> tensor<1x128xf32>
    %30 = linalg.generic {indexing_maps = [#map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%29 : tensor<1x128xf32>) outs(%26 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = arith.cmpf ugt, %in, %cst : f32
      %60 = arith.select %59, %in, %cst : f32
      linalg.yield %60 : f32
    } -> tensor<1x128xf32>
    %31 = linalg.fill ins(%cst_2 : f64) outs(%12 : tensor<f64>) -> tensor<f64>
    %32 = ml_program.global_load @global_seed : tensor<i64>
    %extracted_7 = tensor.extract %32[] : tensor<i64>
    %33 = arith.muli %extracted_7, %c6364136223846793005_i64 : i64
    %34 = arith.addi %33, %c1442695040888963407_i64 : i64
    %inserted_8 = tensor.insert %34 into %32[] : tensor<i64>
    ml_program.global_store @global_seed = %inserted_8 : tensor<i64>
    %35 = tensor.empty() : tensor<1x128xf64>
    %36 = linalg.generic {indexing_maps = [#map4], iterator_types = ["parallel", "parallel"]} outs(%35 : tensor<1x128xf64>) {
    ^bb0(%out: f64):
      %59 = linalg.index 0 : index
      %60 = arith.index_cast %59 : index to i64
      %61 = linalg.index 1 : index
      %62 = arith.index_cast %61 : index to i64
      %63 = arith.muli %60, %c128_i64 : i64
      %64 = arith.addi %63, %62 : i64
      %65 = arith.muli %64, %34 : i64
      %66 = arith.addi %65, %34 : i64
      %67 = arith.muli %65, %65 : i64
      %68 = arith.addi %67, %65 : i64
      %69 = arith.shli %68, %c32_i64 : i64
      %70 = arith.shrui %68, %c32_i64 : i64
      %71 = arith.ori %69, %70 : i64
      %72 = arith.muli %71, %71 : i64
      %73 = arith.addi %72, %66 : i64
      %74 = arith.shli %73, %c32_i64 : i64
      %75 = arith.shrui %73, %c32_i64 : i64
      %76 = arith.ori %74, %75 : i64
      %77 = arith.muli %76, %76 : i64
      %78 = arith.addi %77, %65 : i64
      %79 = arith.shli %78, %c32_i64 : i64
      %80 = arith.shrui %78, %c32_i64 : i64
      %81 = arith.ori %79, %80 : i64
      %82 = arith.muli %81, %81 : i64
      %83 = arith.addi %82, %66 : i64
      %84 = arith.shli %83, %c32_i64 : i64
      %85 = arith.shrui %83, %c32_i64 : i64
      %86 = arith.ori %84, %85 : i64
      %87 = arith.muli %86, %86 : i64
      %88 = arith.addi %87, %65 : i64
      %89 = arith.shrui %88, %c32_i64 : i64
      %90 = arith.xori %83, %89 : i64
      %91 = arith.uitofp %90 : i64 to f64
      %92 = arith.mulf %91, %cst_1 : f64
      %93 = arith.addf %92, %cst_3 : f64
      linalg.yield %93 : f64
    } -> tensor<1x128xf64>
    %37 = tensor.empty() : tensor<1x128xi1>
    %38 = linalg.generic {indexing_maps = [#map7, #map8, #map4], iterator_types = ["parallel", "parallel"]} ins(%36, %31 : tensor<1x128xf64>, tensor<f64>) outs(%37 : tensor<1x128xi1>) {
    ^bb0(%in: f64, %in_9: f64, %out: i1):
      %59 = arith.cmpf ult, %in, %in_9 : f64
      linalg.yield %59 : i1
    } -> tensor<1x128xi1>
    %39 = linalg.generic {indexing_maps = [#map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%38 : tensor<1x128xi1>) outs(%26 : tensor<1x128xf32>) {
    ^bb0(%in: i1, %out: f32):
      %59 = arith.uitofp %in : i1 to f32
      linalg.yield %59 : f32
    } -> tensor<1x128xf32>
    %40 = linalg.generic {indexing_maps = [#map7, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%39, %30 : tensor<1x128xf32>, tensor<1x128xf32>) outs(%26 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %59 = arith.mulf %in, %in_9 : f32
      linalg.yield %59 : f32
    } -> tensor<1x128xf32>
    %41 = linalg.generic {indexing_maps = [#map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%40 : tensor<1x128xf32>) outs(%26 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = arith.divf %in, %cst_6 : f32
      linalg.yield %59 : f32
    } -> tensor<1x128xf32>
    %42 = tensor.empty() : tensor<128x10xf32>
    %43 = linalg.generic {indexing_maps = [#map4, #map5], iterator_types = ["parallel", "parallel"]} ins(%arg6 : tensor<10x128xf32>) outs(%42 : tensor<128x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x10xf32>
    %44 = tensor.empty() : tensor<1x10xf32>
    %45 = linalg.fill ins(%cst : f32) outs(%44 : tensor<1x10xf32>) -> tensor<1x10xf32>
    %46 = linalg.matmul ins(%41, %43 : tensor<1x128xf32>, tensor<128x10xf32>) outs(%45 : tensor<1x10xf32>) -> tensor<1x10xf32>
    %47 = linalg.generic {indexing_maps = [#map6, #map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%arg7, %46 : tensor<10xf32>, tensor<1x10xf32>) outs(%44 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %59 = arith.addf %in, %in_9 : f32
      linalg.yield %59 : f32
    } -> tensor<1x10xf32>
    %48 = tensor.empty() : tensor<1x1xi64>
    %49 = linalg.fill ins(%c0_i64 : i64) outs(%48 : tensor<1x1xi64>) -> tensor<1x1xi64>
    %50 = tensor.empty() : tensor<1x1xf32>
    %51 = linalg.fill ins(%cst_0 : f32) outs(%50 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %52:2 = linalg.generic {indexing_maps = [#map4, #map9, #map9], iterator_types = ["parallel", "reduction"]} ins(%47 : tensor<1x10xf32>) outs(%51, %49 : tensor<1x1xf32>, tensor<1x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_9: i64):
      %59 = linalg.index 1 : index
      %60 = arith.index_cast %59 : index to i64
      %61 = arith.maximumf %in, %out : f32
      %62 = arith.cmpf ogt, %in, %out : f32
      %63 = arith.select %62, %60, %out_9 : i64
      linalg.yield %61, %63 : f32, i64
    } -> (tensor<1x1xf32>, tensor<1x1xi64>)
    %53 = linalg.generic {indexing_maps = [#map7, #map10, #map4], iterator_types = ["parallel", "parallel"]} ins(%47, %52#0 : tensor<1x10xf32>, tensor<1x1xf32>) outs(%44 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %59 = arith.subf %in, %in_9 : f32
      linalg.yield %59 : f32
    } -> tensor<1x10xf32>
    %54 = linalg.generic {indexing_maps = [#map7, #map4], iterator_types = ["parallel", "parallel"]} ins(%53 : tensor<1x10xf32>) outs(%44 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = math.exp %in : f32
      linalg.yield %59 : f32
    } -> tensor<1x10xf32>
    %55 = linalg.fill ins(%cst : f32) outs(%50 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %56 = linalg.generic {indexing_maps = [#map4, #map9], iterator_types = ["parallel", "reduction"]} ins(%54 : tensor<1x10xf32>) outs(%55 : tensor<1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = arith.addf %in, %out : f32
      linalg.yield %59 : f32
    } -> tensor<1x1xf32>
    %57 = linalg.generic {indexing_maps = [#map10, #map4], iterator_types = ["parallel", "parallel"]} ins(%56 : tensor<1x1xf32>) outs(%50 : tensor<1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %59 = math.log %in : f32
      linalg.yield %59 : f32
    } -> tensor<1x1xf32>
    %58 = linalg.generic {indexing_maps = [#map7, #map10, #map4], iterator_types = ["parallel", "parallel"]} ins(%53, %57 : tensor<1x10xf32>, tensor<1x1xf32>) outs(%44 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %59 = arith.subf %in, %in_9 : f32
      linalg.yield %59 : f32
    } -> tensor<1x10xf32>
    return %58 : tensor<1x10xf32>
  }
}

