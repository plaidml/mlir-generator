#map0 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d1)>
#map4 = affine_map<(d0, d1) -> (d0, d1)>
#map5 = affine_map<(d0, d1) -> (d1, d0)>
module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1000xf32>
    %cst_0 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1000x512xf32>
    %cst_1 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_2 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_3 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_4 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_5 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_7 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_8 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_9 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_10 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>
    %cst_11 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_12 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_13 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_14 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x256x1x1xf32>
    %cst_15 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_16 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_17 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_18 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_19 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>
    %cst_20 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_21 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_22 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_23 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>
    %cst_24 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x256x3x3xf32>
    %cst_25 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_26 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_27 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_28 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_29 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>
    %cst_30 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_31 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_32 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_33 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_34 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>
    %cst_35 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_36 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_37 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_38 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128x1x1xf32>
    %cst_39 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_40 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_41 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_42 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_43 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>
    %cst_44 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_45 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_46 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_47 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>
    %cst_48 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128x3x3xf32>
    %cst_49 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_50 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_51 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_52 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_53 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>
    %cst_54 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_55 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_56 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_57 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_58 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>
    %cst_59 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_60 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_61 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_62 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x64x1x1xf32>
    %cst_63 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_64 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_65 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_66 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_67 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>
    %cst_68 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_69 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_70 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_71 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>
    %cst_72 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x64x3x3xf32>
    %cst_73 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_74 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_75 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_76 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_77 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>
    %cst_78 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_79 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_80 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_81 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_82 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>
    %cst_83 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_84 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_85 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_86 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_87 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>
    %cst_88 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_89 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_90 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_91 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_92 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>
    %cst_93 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_94 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_95 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_96 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>
    %cst_97 = arith.constant opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x3x7x7xf32>
    %cst_98 = arith.constant 1.000000e-05 : f64
    %cst_99 = arith.constant 0.000000e+00 : f32
    %cst_100 = arith.constant -3.40282347E+38 : f32
    %cst_101 = arith.constant 4.900000e+01 : f32
    %0 = linalg.init_tensor [1, 64, 112, 112] : tensor<1x64x112x112xf32>
    %1 = linalg.fill ins(%cst_99 : f32) outs(%0 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %2 = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x230x230xf32>
    %3 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%2, %cst_97 : tensor<1x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %4 = arith.cmpi eq, %false, %false : i1
    cf.assert %4, "training is not supported for now"
    %5 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3, %cst_94, %cst_93, %cst_96, %cst_95 : tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%3 : tensor<1x64x112x112xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x64x112x112xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%5 : tensor<1x64x112x112xf32>) outs(%0 : tensor<1x64x112x112xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x64x112x112xf32>
    %7 = tensor.pad %6 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_100 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %8 = linalg.init_tensor [1, 64, 56, 56] : tensor<1x64x56x56xf32>
    %9 = linalg.fill ins(%cst_100 : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %10 = linalg.init_tensor [3, 3] : tensor<3x3xf32>
    %11 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%7, %10 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%9 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %12 = linalg.fill ins(%cst_99 : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %13 = tensor.pad %11 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%13, %cst_92 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%12 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %4, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_89, %cst_88, %cst_91, %cst_90 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x64x56x56xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15 : tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x64x56x56xf32>
    %17 = linalg.fill ins(%cst_99 : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %18 = tensor.pad %16 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %19 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%18, %cst_87 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%17 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %4, "training is not supported for now"
    %20 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19, %cst_84, %cst_83, %cst_86, %cst_85 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%19 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x64x56x56xf32>
    %21 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%20, %11 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x64x56x56xf32>
    %22 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21 : tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x64x56x56xf32>
    %23 = linalg.fill ins(%cst_99 : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %24 = tensor.pad %22 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %25 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%24, %cst_82 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%23 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %4, "training is not supported for now"
    %26 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%25, %cst_79, %cst_78, %cst_81, %cst_80 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%25 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x64x56x56xf32>
    %27 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%26 : tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x64x56x56xf32>
    %28 = linalg.fill ins(%cst_99 : f32) outs(%8 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %29 = tensor.pad %27 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%29, %cst_77 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%28 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %4, "training is not supported for now"
    %31 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %cst_74, %cst_73, %cst_76, %cst_75 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%30 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x64x56x56xf32>
    %32 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %22 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x64x56x56xf32>
    %33 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32 : tensor<1x64x56x56xf32>) outs(%8 : tensor<1x64x56x56xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x64x56x56xf32>
    %34 = linalg.init_tensor [1, 128, 28, 28] : tensor<1x128x28x28xf32>
    %35 = linalg.fill ins(%cst_99 : f32) outs(%34 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %36 = tensor.pad %33 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %37 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%36, %cst_72 : tensor<1x64x58x58xf32>, tensor<128x64x3x3xf32>) outs(%35 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %4, "training is not supported for now"
    %38 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37, %cst_69, %cst_68, %cst_71, %cst_70 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%37 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x128x28x28xf32>
    %39 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%38 : tensor<1x128x28x28xf32>) outs(%34 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x128x28x28xf32>
    %40 = linalg.fill ins(%cst_99 : f32) outs(%34 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %41 = tensor.pad %39 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %42 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%41, %cst_67 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%40 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %4, "training is not supported for now"
    %43 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%42, %cst_64, %cst_63, %cst_66, %cst_65 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%42 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x128x28x28xf32>
    %44 = linalg.fill ins(%cst_99 : f32) outs(%34 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%33, %cst_62 : tensor<1x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%44 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %4, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_59, %cst_63, %cst_61, %cst_60 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%45 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x128x28x28xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%43, %46 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%34 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x128x28x28xf32>
    %48 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%47 : tensor<1x128x28x28xf32>) outs(%34 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x128x28x28xf32>
    %49 = linalg.fill ins(%cst_99 : f32) outs(%34 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %50 = tensor.pad %48 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %51 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%50, %cst_58 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%49 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %4, "training is not supported for now"
    %52 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%51, %cst_55, %cst_54, %cst_57, %cst_56 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%51 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x128x28x28xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x128x28x28xf32>) outs(%34 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x128x28x28xf32>
    %54 = linalg.fill ins(%cst_99 : f32) outs(%34 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %55 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %56 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%55, %cst_53 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%54 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %4, "training is not supported for now"
    %57 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %cst_50, %cst_49, %cst_52, %cst_51 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%56 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x128x28x28xf32>
    %58 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %48 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%34 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x128x28x28xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58 : tensor<1x128x28x28xf32>) outs(%34 : tensor<1x128x28x28xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x128x28x28xf32>
    %60 = linalg.init_tensor [1, 256, 14, 14] : tensor<1x256x14x14xf32>
    %61 = linalg.fill ins(%cst_99 : f32) outs(%60 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %62 = tensor.pad %59 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%62, %cst_48 : tensor<1x128x30x30xf32>, tensor<256x128x3x3xf32>) outs(%61 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %4, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_45, %cst_44, %cst_47, %cst_46 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%63 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x256x14x14xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x256x14x14xf32>) outs(%60 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x256x14x14xf32>
    %66 = linalg.fill ins(%cst_99 : f32) outs(%60 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %67 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%67, %cst_43 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%66 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %4, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_40, %cst_39, %cst_42, %cst_41 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%68 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x256x14x14xf32>
    %70 = linalg.fill ins(%cst_99 : f32) outs(%60 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %71 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%59, %cst_38 : tensor<1x128x28x28xf32>, tensor<256x128x1x1xf32>) outs(%70 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %4, "training is not supported for now"
    %72 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%71, %cst_35, %cst_39, %cst_37, %cst_36 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%71 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x256x14x14xf32>
    %73 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%69, %72 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%60 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x256x14x14xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x256x14x14xf32>) outs(%60 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x256x14x14xf32>
    %75 = linalg.fill ins(%cst_99 : f32) outs(%60 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %76 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %77 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%76, %cst_34 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%75 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %4, "training is not supported for now"
    %78 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77, %cst_31, %cst_30, %cst_33, %cst_32 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%77 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x256x14x14xf32>
    %79 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%78 : tensor<1x256x14x14xf32>) outs(%60 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x256x14x14xf32>
    %80 = linalg.fill ins(%cst_99 : f32) outs(%60 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %81 = tensor.pad %79 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %82 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%81, %cst_29 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%80 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %4, "training is not supported for now"
    %83 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82, %cst_26, %cst_25, %cst_28, %cst_27 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%82 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x256x14x14xf32>
    %84 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%83, %74 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%60 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x256x14x14xf32>
    %85 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%84 : tensor<1x256x14x14xf32>) outs(%60 : tensor<1x256x14x14xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x256x14x14xf32>
    %86 = linalg.init_tensor [1, 512, 7, 7] : tensor<1x512x7x7xf32>
    %87 = linalg.fill ins(%cst_99 : f32) outs(%86 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %88 = tensor.pad %85 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %89 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%88, %cst_24 : tensor<1x256x16x16xf32>, tensor<512x256x3x3xf32>) outs(%87 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %4, "training is not supported for now"
    %90 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%89, %cst_21, %cst_20, %cst_23, %cst_22 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%89 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x512x7x7xf32>
    %91 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%90 : tensor<1x512x7x7xf32>) outs(%86 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x512x7x7xf32>
    %92 = linalg.fill ins(%cst_99 : f32) outs(%86 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %93 = tensor.pad %91 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %94 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%93, %cst_19 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%92 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %4, "training is not supported for now"
    %95 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%94, %cst_16, %cst_15, %cst_18, %cst_17 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%94 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x512x7x7xf32>
    %96 = linalg.fill ins(%cst_99 : f32) outs(%86 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %97 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%85, %cst_14 : tensor<1x256x14x14xf32>, tensor<512x256x1x1xf32>) outs(%96 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %4, "training is not supported for now"
    %98 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%97, %cst_11, %cst_15, %cst_13, %cst_12 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%97 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x512x7x7xf32>
    %99 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%95, %98 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%86 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x512x7x7xf32>
    %100 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%99 : tensor<1x512x7x7xf32>) outs(%86 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x512x7x7xf32>
    %101 = linalg.fill ins(%cst_99 : f32) outs(%86 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %102 = tensor.pad %100 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %103 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%102, %cst_10 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%101 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %4, "training is not supported for now"
    %104 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%103, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%103 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x512x7x7xf32>
    %105 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%104 : tensor<1x512x7x7xf32>) outs(%86 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x512x7x7xf32>
    %106 = linalg.fill ins(%cst_99 : f32) outs(%86 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %107 = tensor.pad %105 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %108 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%107, %cst_5 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%106 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %4, "training is not supported for now"
    %109 = linalg.generic {indexing_maps = [#map0, #map1, #map1, #map1, #map1, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%108, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%108 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32):
      %123 = arith.truncf %cst_98 : f64 to f32
      %124 = arith.addf %arg5, %123 : f32
      %125 = math.rsqrt %124 : f32
      %126 = arith.subf %arg1, %arg4 : f32
      %127 = arith.mulf %126, %125 : f32
      %128 = arith.mulf %127, %arg2 : f32
      %129 = arith.addf %128, %arg3 : f32
      linalg.yield %129 : f32
    } -> tensor<1x512x7x7xf32>
    %110 = linalg.generic {indexing_maps = [#map2, #map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%109, %100 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%86 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32, %arg3: f32):
      %123 = arith.addf %arg1, %arg2 : f32
      linalg.yield %123 : f32
    } -> tensor<1x512x7x7xf32>
    %111 = linalg.generic {indexing_maps = [#map2, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%110 : tensor<1x512x7x7xf32>) outs(%86 : tensor<1x512x7x7xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.cmpf ugt, %arg1, %cst_99 : f32
      %124 = arith.select %123, %arg1, %cst_99 : f32
      linalg.yield %124 : f32
    } -> tensor<1x512x7x7xf32>
    %112 = linalg.init_tensor [1, 512, 1, 1] : tensor<1x512x1x1xf32>
    %113 = linalg.fill ins(%cst_99 : f32) outs(%112 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %114 = linalg.init_tensor [7, 7] : tensor<7x7xf32>
    %115 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%111, %114 : tensor<1x512x7x7xf32>, tensor<7x7xf32>) outs(%113 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %116 = linalg.generic {indexing_maps = [#map0, #map0], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%115 : tensor<1x512x1x1xf32>) outs(%112 : tensor<1x512x1x1xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      %123 = arith.divf %arg1, %cst_101 : f32
      linalg.yield %123 : f32
    } -> tensor<1x512x1x1xf32>
    %117 = tensor.collapse_shape %116 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %118 = linalg.init_tensor [1, 1000] : tensor<1x1000xf32>
    %119 = linalg.init_tensor [512, 1000] : tensor<512x1000xf32>
    %120 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<1000xf32>) outs(%118 : tensor<1x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<1x1000xf32>
    %121 = linalg.generic {indexing_maps = [#map5, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x512xf32>) outs(%119 : tensor<512x1000xf32>) {
    ^bb0(%arg1: f32, %arg2: f32):
      linalg.yield %arg1 : f32
    } -> tensor<512x1000xf32>
    %122 = linalg.matmul ins(%117, %121 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%120 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %122 : tensor<1x1000xf32>
  }
}