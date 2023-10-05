linalg-on-tensors 
 #map = affine_map<(d0, d1, d2, d3) -> (d1)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d0, d1, d2, d3)>
#map4 = affine_map<(d0, d1, d2, d3, d4, d5) -> (d4, d5)>
#map5 = affine_map<(d0, d1, d2, d3) -> ()>
#map6 = affine_map<(d0, d1) -> (d0, d1)>
#map7 = affine_map<(d0, d1) -> (d1, d0)>
#map8 = affine_map<(d0, d1) -> (d1)>
#map9 = affine_map<(d0, d1) -> (0, d1)>
#map10 = affine_map<(d0, d1) -> ()>
#map11 = affine_map<(d0, d1) -> (d0, 0)>
#map12 = affine_map<(d0, d1) -> (0, 0)>
module attributes {torch.debug_module_name = "GraphModule"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<32x1x3x3xf32>, %arg1: tensor<32xf32>, %arg2: tensor<64x32x3x3xf32>, %arg3: tensor<64xf32>, %arg4: tensor<128x9216xf32>, %arg5: tensor<128xf32>, %arg6: tensor<10x128xf32>, %arg7: tensor<10xf32>, %arg8: tensor<1x1x28x28xf32>) -> (tensor<1x10xf32>, tensor<32x1x3x3xf32>, tensor<64x32x3x3xf32>, tensor<1x1x28x28xf32>, tensor<1x32x26x26xf32>, tensor<1x64x24x24xf32>, tensor<1x64x12x12xi64>, tensor<1x64x12x12xi1>, tensor<1x9216xf32>, tensor<9216x128xf32>, tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128xi1>, tensor<128x10xf32>, tensor<1x10xf32>) {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %c-1_i64 = arith.constant -1 : i64
    %c6364136223846793005_i64 = arith.constant 6364136223846793005 : i64
    %c1442695040888963407_i64 = arith.constant 1442695040888963407 : i64
    %c32_i64 = arith.constant 32 : i64
    %cst_1 = arith.constant 5.4210107999999998E-20 : f64
    %cst_2 = arith.constant 5.000000e-01 : f64
    %cst_3 = arith.constant 0.000000e+00 : f64
    %cst_4 = arith.constant 7.500000e-01 : f64
    %c24 = arith.constant 24 : index
    %c0_i64 = arith.constant 0 : i64
    %c2 = arith.constant 2 : index
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
      %65 = arith.cmpf ugt, %in, %cst : f32
      %66 = arith.select %65, %in, %cst : f32
      linalg.yield %66 : f32
    } -> tensor<1x32x26x26xf32>
    %4 = tensor.empty() : tensor<1x64x24x24xf32>
    %5 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%arg3 : tensor<64xf32>) outs(%4 : tensor<1x64x24x24xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x64x24x24xf32>
    %6 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%3, %arg2 : tensor<1x32x26x26xf32>, tensor<64x32x3x3xf32>) outs(%5 : tensor<1x64x24x24xf32>) -> tensor<1x64x24x24xf32>
    %7 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6 : tensor<1x64x24x24xf32>) outs(%4 : tensor<1x64x24x24xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = arith.cmpf ugt, %in, %cst : f32
      %66 = arith.select %65, %in, %cst : f32
      linalg.yield %66 : f32
    } -> tensor<1x64x24x24xf32>
    %8 = tensor.empty() : tensor<1x64x12x12xf32>
    %9 = linalg.fill ins(%cst_0 : f32) outs(%8 : tensor<1x64x12x12xf32>) -> tensor<1x64x12x12xf32>
    %10 = tensor.empty() : tensor<2x2xf32>
    %11 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%7, %10 : tensor<1x64x24x24xf32>, tensor<2x2xf32>) outs(%9 : tensor<1x64x12x12xf32>) -> tensor<1x64x12x12xf32>
    %12 = tensor.empty() : tensor<1x64x12x12xi64>
    %13 = linalg.fill ins(%c-1_i64 : i64) outs(%12 : tensor<1x64x12x12xi64>) -> tensor<1x64x12x12xi64>
    %14 = tensor.empty() : tensor<2x2xi64>
    %15 = linalg.generic {indexing_maps = [#map3, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel", "parallel", "reduction", "reduction"]} ins(%11, %14 : tensor<1x64x12x12xf32>, tensor<2x2xi64>) outs(%13 : tensor<1x64x12x12xi64>) {
    ^bb0(%in: f32, %in_9: i64, %out: i64):
      %65 = linalg.index 0 : index
      %66 = linalg.index 1 : index
      %67 = linalg.index 2 : index
      %68 = linalg.index 3 : index
      %69 = linalg.index 4 : index
      %70 = linalg.index 5 : index
      %71 = arith.muli %67, %c2 : index
      %72 = arith.addi %71, %69 : index
      %73 = arith.muli %68, %c2 : index
      %74 = arith.addi %73, %70 : index
      %extracted_10 = tensor.extract %7[%65, %66, %72, %74] : tensor<1x64x24x24xf32>
      %75 = arith.cmpf oeq, %extracted_10, %in : f32
      %76 = arith.muli %72, %c24 : index
      %77 = arith.addi %76, %74 : index
      %78 = arith.index_cast %77 : index to i64
      %79 = arith.select %75, %78, %out : i64
      %80 = arith.cmpi eq, %out, %c-1_i64 : i64
      %81 = arith.select %80, %79, %out : i64
      linalg.yield %81 : i64
    } -> tensor<1x64x12x12xi64>
    %16 = tensor.empty() : tensor<f64>
    %17 = linalg.fill ins(%cst_4 : f64) outs(%16 : tensor<f64>) -> tensor<f64>
    %18 = ml_program.global_load @global_seed : tensor<i64>
    %extracted = tensor.extract %18[] : tensor<i64>
    %19 = arith.muli %extracted, %c6364136223846793005_i64 : i64
    %20 = arith.addi %19, %c1442695040888963407_i64 : i64
    %inserted = tensor.insert %20 into %18[] : tensor<i64>
    ml_program.global_store @global_seed = %inserted : tensor<i64>
    %21 = tensor.empty() : tensor<1x64x12x12xf64>
    %22 = linalg.generic {indexing_maps = [#map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} outs(%21 : tensor<1x64x12x12xf64>) {
    ^bb0(%out: f64):
      %65 = linalg.index 0 : index
      %66 = arith.index_cast %65 : index to i64
      %67 = linalg.index 1 : index
      %68 = arith.index_cast %67 : index to i64
      %69 = linalg.index 2 : index
      %70 = arith.index_cast %69 : index to i64
      %71 = linalg.index 3 : index
      %72 = arith.index_cast %71 : index to i64
      %73 = arith.muli %66, %c64_i64 : i64
      %74 = arith.addi %73, %68 : i64
      %75 = arith.muli %74, %c12_i64 : i64
      %76 = arith.addi %75, %70 : i64
      %77 = arith.muli %76, %c12_i64 : i64
      %78 = arith.addi %77, %72 : i64
      %79 = arith.muli %78, %20 : i64
      %80 = arith.addi %79, %20 : i64
      %81 = arith.muli %79, %79 : i64
      %82 = arith.addi %81, %79 : i64
      %83 = arith.shli %82, %c32_i64 : i64
      %84 = arith.shrui %82, %c32_i64 : i64
      %85 = arith.ori %83, %84 : i64
      %86 = arith.muli %85, %85 : i64
      %87 = arith.addi %86, %80 : i64
      %88 = arith.shli %87, %c32_i64 : i64
      %89 = arith.shrui %87, %c32_i64 : i64
      %90 = arith.ori %88, %89 : i64
      %91 = arith.muli %90, %90 : i64
      %92 = arith.addi %91, %79 : i64
      %93 = arith.shli %92, %c32_i64 : i64
      %94 = arith.shrui %92, %c32_i64 : i64
      %95 = arith.ori %93, %94 : i64
      %96 = arith.muli %95, %95 : i64
      %97 = arith.addi %96, %80 : i64
      %98 = arith.shli %97, %c32_i64 : i64
      %99 = arith.shrui %97, %c32_i64 : i64
      %100 = arith.ori %98, %99 : i64
      %101 = arith.muli %100, %100 : i64
      %102 = arith.addi %101, %79 : i64
      %103 = arith.shrui %102, %c32_i64 : i64
      %104 = arith.xori %97, %103 : i64
      %105 = arith.uitofp %104 : i64 to f64
      %106 = arith.mulf %105, %cst_1 : f64
      %107 = arith.addf %106, %cst_3 : f64
      linalg.yield %107 : f64
    } -> tensor<1x64x12x12xf64>
    %23 = tensor.empty() : tensor<1x64x12x12xi1>
    %24 = linalg.generic {indexing_maps = [#map2, #map5, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %17 : tensor<1x64x12x12xf64>, tensor<f64>) outs(%23 : tensor<1x64x12x12xi1>) {
    ^bb0(%in: f64, %in_9: f64, %out: i1):
      %65 = arith.cmpf ult, %in, %in_9 : f64
      linalg.yield %65 : i1
    } -> tensor<1x64x12x12xi1>
    %25 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%24 : tensor<1x64x12x12xi1>) outs(%8 : tensor<1x64x12x12xf32>) {
    ^bb0(%in: i1, %out: f32):
      %65 = arith.uitofp %in : i1 to f32
      linalg.yield %65 : f32
    } -> tensor<1x64x12x12xf32>
    %26 = linalg.generic {indexing_maps = [#map2, #map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %11 : tensor<1x64x12x12xf32>, tensor<1x64x12x12xf32>) outs(%8 : tensor<1x64x12x12xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %65 = arith.mulf %in, %in_9 : f32
      linalg.yield %65 : f32
    } -> tensor<1x64x12x12xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x12x12xf32>) outs(%8 : tensor<1x64x12x12xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = arith.divf %in, %cst_5 : f32
      linalg.yield %65 : f32
    } -> tensor<1x64x12x12xf32>
    %28 = linalg.generic {indexing_maps = [#map2, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25 : tensor<1x64x12x12xf32>) outs(%23 : tensor<1x64x12x12xi1>) {
    ^bb0(%in: f32, %out: i1):
      %65 = arith.cmpf une, %in, %cst : f32
      linalg.yield %65 : i1
    } -> tensor<1x64x12x12xi1>
    %collapsed = tensor.collapse_shape %27 [[0], [1, 2, 3]] : tensor<1x64x12x12xf32> into tensor<1x9216xf32>
    %29 = tensor.empty() : tensor<9216x128xf32>
    %30 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%arg4 : tensor<128x9216xf32>) outs(%29 : tensor<9216x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<9216x128xf32>
    %31 = tensor.empty() : tensor<1x128xf32>
    %32 = linalg.fill ins(%cst : f32) outs(%31 : tensor<1x128xf32>) -> tensor<1x128xf32>
    %33 = linalg.matmul ins(%collapsed, %30 : tensor<1x9216xf32>, tensor<9216x128xf32>) outs(%32 : tensor<1x128xf32>) -> tensor<1x128xf32>
    %34 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%arg5, %33 : tensor<128xf32>, tensor<1x128xf32>) outs(%31 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %65 = arith.addf %in, %in_9 : f32
      linalg.yield %65 : f32
    } -> tensor<1x128xf32>
    %35 = linalg.generic {indexing_maps = [#map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%34 : tensor<1x128xf32>) outs(%31 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = arith.cmpf ugt, %in, %cst : f32
      %66 = arith.select %65, %in, %cst : f32
      linalg.yield %66 : f32
    } -> tensor<1x128xf32>
    %36 = linalg.fill ins(%cst_2 : f64) outs(%16 : tensor<f64>) -> tensor<f64>
    %37 = ml_program.global_load @global_seed : tensor<i64>
    %extracted_7 = tensor.extract %37[] : tensor<i64>
    %38 = arith.muli %extracted_7, %c6364136223846793005_i64 : i64
    %39 = arith.addi %38, %c1442695040888963407_i64 : i64
    %inserted_8 = tensor.insert %39 into %37[] : tensor<i64>
    ml_program.global_store @global_seed = %inserted_8 : tensor<i64>
    %40 = tensor.empty() : tensor<1x128xf64>
    %41 = linalg.generic {indexing_maps = [#map6], iterator_types = ["parallel", "parallel"]} outs(%40 : tensor<1x128xf64>) {
    ^bb0(%out: f64):
      %65 = linalg.index 0 : index
      %66 = arith.index_cast %65 : index to i64
      %67 = linalg.index 1 : index
      %68 = arith.index_cast %67 : index to i64
      %69 = arith.muli %66, %c128_i64 : i64
      %70 = arith.addi %69, %68 : i64
      %71 = arith.muli %70, %39 : i64
      %72 = arith.addi %71, %39 : i64
      %73 = arith.muli %71, %71 : i64
      %74 = arith.addi %73, %71 : i64
      %75 = arith.shli %74, %c32_i64 : i64
      %76 = arith.shrui %74, %c32_i64 : i64
      %77 = arith.ori %75, %76 : i64
      %78 = arith.muli %77, %77 : i64
      %79 = arith.addi %78, %72 : i64
      %80 = arith.shli %79, %c32_i64 : i64
      %81 = arith.shrui %79, %c32_i64 : i64
      %82 = arith.ori %80, %81 : i64
      %83 = arith.muli %82, %82 : i64
      %84 = arith.addi %83, %71 : i64
      %85 = arith.shli %84, %c32_i64 : i64
      %86 = arith.shrui %84, %c32_i64 : i64
      %87 = arith.ori %85, %86 : i64
      %88 = arith.muli %87, %87 : i64
      %89 = arith.addi %88, %72 : i64
      %90 = arith.shli %89, %c32_i64 : i64
      %91 = arith.shrui %89, %c32_i64 : i64
      %92 = arith.ori %90, %91 : i64
      %93 = arith.muli %92, %92 : i64
      %94 = arith.addi %93, %71 : i64
      %95 = arith.shrui %94, %c32_i64 : i64
      %96 = arith.xori %89, %95 : i64
      %97 = arith.uitofp %96 : i64 to f64
      %98 = arith.mulf %97, %cst_1 : f64
      %99 = arith.addf %98, %cst_3 : f64
      linalg.yield %99 : f64
    } -> tensor<1x128xf64>
    %42 = tensor.empty() : tensor<1x128xi1>
    %43 = linalg.generic {indexing_maps = [#map9, #map10, #map6], iterator_types = ["parallel", "parallel"]} ins(%41, %36 : tensor<1x128xf64>, tensor<f64>) outs(%42 : tensor<1x128xi1>) {
    ^bb0(%in: f64, %in_9: f64, %out: i1):
      %65 = arith.cmpf ult, %in, %in_9 : f64
      linalg.yield %65 : i1
    } -> tensor<1x128xi1>
    %44 = linalg.generic {indexing_maps = [#map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%43 : tensor<1x128xi1>) outs(%31 : tensor<1x128xf32>) {
    ^bb0(%in: i1, %out: f32):
      %65 = arith.uitofp %in : i1 to f32
      linalg.yield %65 : f32
    } -> tensor<1x128xf32>
    %45 = linalg.generic {indexing_maps = [#map9, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%44, %35 : tensor<1x128xf32>, tensor<1x128xf32>) outs(%31 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %65 = arith.mulf %in, %in_9 : f32
      linalg.yield %65 : f32
    } -> tensor<1x128xf32>
    %46 = linalg.generic {indexing_maps = [#map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%45 : tensor<1x128xf32>) outs(%31 : tensor<1x128xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = arith.divf %in, %cst_6 : f32
      linalg.yield %65 : f32
    } -> tensor<1x128xf32>
    %47 = linalg.generic {indexing_maps = [#map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%44 : tensor<1x128xf32>) outs(%42 : tensor<1x128xi1>) {
    ^bb0(%in: f32, %out: i1):
      %65 = arith.cmpf une, %in, %cst : f32
      linalg.yield %65 : i1
    } -> tensor<1x128xi1>
    %48 = tensor.empty() : tensor<128x10xf32>
    %49 = linalg.generic {indexing_maps = [#map6, #map7], iterator_types = ["parallel", "parallel"]} ins(%arg6 : tensor<10x128xf32>) outs(%48 : tensor<128x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<128x10xf32>
    %50 = tensor.empty() : tensor<1x10xf32>
    %51 = linalg.fill ins(%cst : f32) outs(%50 : tensor<1x10xf32>) -> tensor<1x10xf32>
    %52 = linalg.matmul ins(%46, %49 : tensor<1x128xf32>, tensor<128x10xf32>) outs(%51 : tensor<1x10xf32>) -> tensor<1x10xf32>
    %53 = linalg.generic {indexing_maps = [#map8, #map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%arg7, %52 : tensor<10xf32>, tensor<1x10xf32>) outs(%50 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %65 = arith.addf %in, %in_9 : f32
      linalg.yield %65 : f32
    } -> tensor<1x10xf32>
    %54 = tensor.empty() : tensor<1x1xi64>
    %55 = linalg.fill ins(%c0_i64 : i64) outs(%54 : tensor<1x1xi64>) -> tensor<1x1xi64>
    %56 = tensor.empty() : tensor<1x1xf32>
    %57 = linalg.fill ins(%cst_0 : f32) outs(%56 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %58:2 = linalg.generic {indexing_maps = [#map6, #map11, #map11], iterator_types = ["parallel", "reduction"]} ins(%53 : tensor<1x10xf32>) outs(%57, %55 : tensor<1x1xf32>, tensor<1x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_9: i64):
      %65 = linalg.index 1 : index
      %66 = arith.index_cast %65 : index to i64
      %67 = arith.maximumf %in, %out : f32
      %68 = arith.cmpf ogt, %in, %out : f32
      %69 = arith.select %68, %66, %out_9 : i64
      linalg.yield %67, %69 : f32, i64
    } -> (tensor<1x1xf32>, tensor<1x1xi64>)
    %59 = linalg.generic {indexing_maps = [#map9, #map12, #map6], iterator_types = ["parallel", "parallel"]} ins(%53, %58#0 : tensor<1x10xf32>, tensor<1x1xf32>) outs(%50 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %65 = arith.subf %in, %in_9 : f32
      linalg.yield %65 : f32
    } -> tensor<1x10xf32>
    %60 = linalg.generic {indexing_maps = [#map9, #map6], iterator_types = ["parallel", "parallel"]} ins(%59 : tensor<1x10xf32>) outs(%50 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = math.exp %in : f32
      linalg.yield %65 : f32
    } -> tensor<1x10xf32>
    %61 = linalg.fill ins(%cst : f32) outs(%56 : tensor<1x1xf32>) -> tensor<1x1xf32>
    %62 = linalg.generic {indexing_maps = [#map6, #map11], iterator_types = ["parallel", "reduction"]} ins(%60 : tensor<1x10xf32>) outs(%61 : tensor<1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = arith.addf %in, %out : f32
      linalg.yield %65 : f32
    } -> tensor<1x1xf32>
    %63 = linalg.generic {indexing_maps = [#map12, #map6], iterator_types = ["parallel", "parallel"]} ins(%62 : tensor<1x1xf32>) outs(%56 : tensor<1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %65 = math.log %in : f32
      linalg.yield %65 : f32
    } -> tensor<1x1xf32>
    %64 = linalg.generic {indexing_maps = [#map9, #map12, #map6], iterator_types = ["parallel", "parallel"]} ins(%59, %63 : tensor<1x10xf32>, tensor<1x1xf32>) outs(%50 : tensor<1x10xf32>) {
    ^bb0(%in: f32, %in_9: f32, %out: f32):
      %65 = arith.subf %in, %in_9 : f32
      linalg.yield %65 : f32
    } -> tensor<1x10xf32>
    return %64, %arg0, %arg2, %arg8, %3, %7, %15, %28, %collapsed, %30, %35, %46, %47, %49, %64 : tensor<1x10xf32>, tensor<32x1x3x3xf32>, tensor<64x32x3x3xf32>, tensor<1x1x28x28xf32>, tensor<1x32x26x26xf32>, tensor<1x64x24x24xf32>, tensor<1x64x12x12xi64>, tensor<1x64x12x12xi1>, tensor<1x9216xf32>, tensor<9216x128xf32>, tensor<1x128xf32>, tensor<1x128xf32>, tensor<1x128xi1>, tensor<128x10xf32>, tensor<1x10xf32>
  }
}

