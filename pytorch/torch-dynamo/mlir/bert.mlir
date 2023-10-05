linalg-on-tensors 
 #map = affine_map<(d0, d1, d2, d3) -> (0, 0, 0, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
#map3 = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map4 = affine_map<(d0, d1, d2) -> (0, d1, d2)>
#map5 = affine_map<(d0, d1, d2) -> (d0, d1, 0)>
#map6 = affine_map<(d0, d1, d2) -> (0, d1, 0)>
#map7 = affine_map<(d0, d1, d2) -> (d2)>
#map8 = affine_map<(d0, d1) -> (d0, d1)>
#map9 = affine_map<(d0, d1) -> (d1, d0)>
#map10 = affine_map<(d0, d1) -> (d1)>
#map11 = affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>
#map12 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d3, d2)>
#map13 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map14 = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>
#map15 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, 0)>
#map16 = affine_map<(d0, d1) -> (0, d1)>
module attributes {torch.debug_module_name = "GraphModule"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<30522x768xf32>, %arg1: tensor<2x768xf32>, %arg2: tensor<512x768xf32>, %arg3: tensor<768xf32>, %arg4: tensor<768xf32>, %arg5: tensor<768x768xf32>, %arg6: tensor<768xf32>, %arg7: tensor<768x768xf32>, %arg8: tensor<768xf32>, %arg9: tensor<768x768xf32>, %arg10: tensor<768xf32>, %arg11: tensor<768x768xf32>, %arg12: tensor<768xf32>, %arg13: tensor<768xf32>, %arg14: tensor<768xf32>, %arg15: tensor<3072x768xf32>, %arg16: tensor<3072xf32>, %arg17: tensor<768x3072xf32>, %arg18: tensor<768xf32>, %arg19: tensor<768xf32>, %arg20: tensor<768xf32>, %arg21: tensor<768x768xf32>, %arg22: tensor<768xf32>, %arg23: tensor<768x768xf32>, %arg24: tensor<768xf32>, %arg25: tensor<768x768xf32>, %arg26: tensor<768xf32>, %arg27: tensor<768x768xf32>, %arg28: tensor<768xf32>, %arg29: tensor<768xf32>, %arg30: tensor<768xf32>, %arg31: tensor<3072x768xf32>, %arg32: tensor<3072xf32>, %arg33: tensor<768x3072xf32>, %arg34: tensor<768xf32>, %arg35: tensor<768xf32>, %arg36: tensor<768xf32>, %arg37: tensor<768x768xf32>, %arg38: tensor<768xf32>, %arg39: tensor<768x768xf32>, %arg40: tensor<768xf32>, %arg41: tensor<768x768xf32>, %arg42: tensor<768xf32>, %arg43: tensor<768x768xf32>, %arg44: tensor<768xf32>, %arg45: tensor<768xf32>, %arg46: tensor<768xf32>, %arg47: tensor<3072x768xf32>, %arg48: tensor<3072xf32>, %arg49: tensor<768x3072xf32>, %arg50: tensor<768xf32>, %arg51: tensor<768xf32>, %arg52: tensor<768xf32>, %arg53: tensor<768x768xf32>, %arg54: tensor<768xf32>, %arg55: tensor<768x768xf32>, %arg56: tensor<768xf32>, %arg57: tensor<768x768xf32>, %arg58: tensor<768xf32>, %arg59: tensor<768x768xf32>, %arg60: tensor<768xf32>, %arg61: tensor<768xf32>, %arg62: tensor<768xf32>, %arg63: tensor<3072x768xf32>, %arg64: tensor<3072xf32>, %arg65: tensor<768x3072xf32>, %arg66: tensor<768xf32>, %arg67: tensor<768xf32>, %arg68: tensor<768xf32>, %arg69: tensor<768x768xf32>, %arg70: tensor<768xf32>, %arg71: tensor<768x768xf32>, %arg72: tensor<768xf32>, %arg73: tensor<768x768xf32>, %arg74: tensor<768xf32>, %arg75: tensor<768x768xf32>, %arg76: tensor<768xf32>, %arg77: tensor<768xf32>, %arg78: tensor<768xf32>, %arg79: tensor<3072x768xf32>, %arg80: tensor<3072xf32>, %arg81: tensor<768x3072xf32>, %arg82: tensor<768xf32>, %arg83: tensor<768xf32>, %arg84: tensor<768xf32>, %arg85: tensor<768x768xf32>, %arg86: tensor<768xf32>, %arg87: tensor<768x768xf32>, %arg88: tensor<768xf32>, %arg89: tensor<768x768xf32>, %arg90: tensor<768xf32>, %arg91: tensor<768x768xf32>, %arg92: tensor<768xf32>, %arg93: tensor<768xf32>, %arg94: tensor<768xf32>, %arg95: tensor<3072x768xf32>, %arg96: tensor<3072xf32>, %arg97: tensor<768x3072xf32>, %arg98: tensor<768xf32>, %arg99: tensor<768xf32>, %arg100: tensor<768xf32>, %arg101: tensor<768x768xf32>, %arg102: tensor<768xf32>, %arg103: tensor<768x768xf32>, %arg104: tensor<768xf32>, %arg105: tensor<768x768xf32>, %arg106: tensor<768xf32>, %arg107: tensor<768x768xf32>, %arg108: tensor<768xf32>, %arg109: tensor<768xf32>, %arg110: tensor<768xf32>, %arg111: tensor<3072x768xf32>, %arg112: tensor<3072xf32>, %arg113: tensor<768x3072xf32>, %arg114: tensor<768xf32>, %arg115: tensor<768xf32>, %arg116: tensor<768xf32>, %arg117: tensor<768x768xf32>, %arg118: tensor<768xf32>, %arg119: tensor<768x768xf32>, %arg120: tensor<768xf32>, %arg121: tensor<768x768xf32>, %arg122: tensor<768xf32>, %arg123: tensor<768x768xf32>, %arg124: tensor<768xf32>, %arg125: tensor<768xf32>, %arg126: tensor<768xf32>, %arg127: tensor<3072x768xf32>, %arg128: tensor<3072xf32>, %arg129: tensor<768x3072xf32>, %arg130: tensor<768xf32>, %arg131: tensor<768xf32>, %arg132: tensor<768xf32>, %arg133: tensor<768x768xf32>, %arg134: tensor<768xf32>, %arg135: tensor<768x768xf32>, %arg136: tensor<768xf32>, %arg137: tensor<768x768xf32>, %arg138: tensor<768xf32>, %arg139: tensor<768x768xf32>, %arg140: tensor<768xf32>, %arg141: tensor<768xf32>, %arg142: tensor<768xf32>, %arg143: tensor<3072x768xf32>, %arg144: tensor<3072xf32>, %arg145: tensor<768x3072xf32>, %arg146: tensor<768xf32>, %arg147: tensor<768xf32>, %arg148: tensor<768xf32>, %arg149: tensor<768x768xf32>, %arg150: tensor<768xf32>, %arg151: tensor<768x768xf32>, %arg152: tensor<768xf32>, %arg153: tensor<768x768xf32>, %arg154: tensor<768xf32>, %arg155: tensor<768x768xf32>, %arg156: tensor<768xf32>, %arg157: tensor<768xf32>, %arg158: tensor<768xf32>, %arg159: tensor<3072x768xf32>, %arg160: tensor<3072xf32>, %arg161: tensor<768x3072xf32>, %arg162: tensor<768xf32>, %arg163: tensor<768xf32>, %arg164: tensor<768xf32>, %arg165: tensor<768x768xf32>, %arg166: tensor<768xf32>, %arg167: tensor<768x768xf32>, %arg168: tensor<768xf32>, %arg169: tensor<768x768xf32>, %arg170: tensor<768xf32>, %arg171: tensor<768x768xf32>, %arg172: tensor<768xf32>, %arg173: tensor<768xf32>, %arg174: tensor<768xf32>, %arg175: tensor<3072x768xf32>, %arg176: tensor<3072xf32>, %arg177: tensor<768x3072xf32>, %arg178: tensor<768xf32>, %arg179: tensor<768xf32>, %arg180: tensor<768xf32>, %arg181: tensor<768x768xf32>, %arg182: tensor<768xf32>, %arg183: tensor<768x768xf32>, %arg184: tensor<768xf32>, %arg185: tensor<768x768xf32>, %arg186: tensor<768xf32>, %arg187: tensor<768x768xf32>, %arg188: tensor<768xf32>, %arg189: tensor<768xf32>, %arg190: tensor<768xf32>, %arg191: tensor<3072x768xf32>, %arg192: tensor<3072xf32>, %arg193: tensor<768x3072xf32>, %arg194: tensor<768xf32>, %arg195: tensor<768xf32>, %arg196: tensor<768xf32>, %arg197: tensor<768x768xf32>, %arg198: tensor<768xf32>, %arg199: tensor<1x512xi64>, %arg200: tensor<1x8xi64>, %arg201: tensor<1x8xi64>, %arg202: tensor<1x8xi64>) -> (tensor<1x8x768xf32>, tensor<1x768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<1x8xi64>, tensor<1x8xi64>, tensor<1x8xi64>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<1x768xf32>, tensor<768x768xf32>, tensor<1x768xf32>) {
    %c512 = arith.constant 512 : index
    %c30522 = arith.constant 30522 : index
    %c2 = arith.constant 2 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 1.000000e+00 : f32
    %cst_2 = arith.constant 1.41421354 : f32
    %cst_3 = arith.constant 5.000000e-01 : f32
    %c0_i64 = arith.constant 0 : i64
    %cst_4 = arith.constant 9.9999999999999998E-13 : f64
    %cst_5 = arith.constant -3.40282347E+38 : f32
    %cst_6 = arith.constant 7.680000e+02 : f32
    %cst_7 = arith.constant 8.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %expanded = tensor.expand_shape %arg201 [[0], [1, 2, 3]] : tensor<1x8xi64> into tensor<1x1x1x8xi64>
    %0 = tensor.empty() : tensor<1x1x1x8xf32>
    %1 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded : tensor<1x1x1x8xi64>) outs(%0 : tensor<1x1x1x8xf32>) {
    ^bb0(%in: i64, %out: f32):
      %833 = arith.sitofp %in : i64 to f32
      linalg.yield %833 : f32
    } -> tensor<1x1x1x8xf32>
    %2 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1 : tensor<1x1x1x8xf32>) outs(%0 : tensor<1x1x1x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.subf %cst_1, %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x1x1x8xf32>
    %3 = linalg.generic {indexing_maps = [#map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2 : tensor<1x1x1x8xf32>) outs(%0 : tensor<1x1x1x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.mulf %in, %cst_5 : f32
      linalg.yield %833 : f32
    } -> tensor<1x1x1x8xf32>
    %extracted_slice = tensor.extract_slice %arg199[0, 0] [1, 8] [1, 1] : tensor<1x512xi64> to tensor<1x8xi64>
    %4 = tensor.empty() : tensor<1x8x768xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg200 : tensor<1x8xi64>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: i64, %out: f32):
      %833 = arith.index_cast %in : i64 to index
      %834 = linalg.index 2 : index
      %835 = arith.cmpi slt, %833, %c30522 : index
      cf.assert %835, "index must be smaller than dim size"
      %836 = arith.cmpi sge, %in, %c0_i64 : i64
      cf.assert %836, "index must be larger or equal to 0"
      %extracted = tensor.extract %arg0[%833, %834] : tensor<30522x768xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %6 = linalg.generic {indexing_maps = [#map2, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg202 : tensor<1x8xi64>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: i64, %out: f32):
      %833 = arith.index_cast %in : i64 to index
      %834 = linalg.index 2 : index
      %835 = arith.cmpi slt, %833, %c2 : index
      cf.assert %835, "index must be smaller than dim size"
      %836 = arith.cmpi sge, %in, %c0_i64 : i64
      cf.assert %836, "index must be larger or equal to 0"
      %extracted = tensor.extract %arg1[%833, %834] : tensor<2x768xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %7 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%5, %6 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %8 = linalg.generic {indexing_maps = [#map2, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%extracted_slice : tensor<1x8xi64>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: i64, %out: f32):
      %833 = arith.index_cast %in : i64 to index
      %834 = linalg.index 2 : index
      %835 = arith.cmpi slt, %833, %c512 : index
      cf.assert %835, "index must be smaller than dim size"
      %836 = arith.cmpi sge, %in, %c0_i64 : i64
      cf.assert %836, "index must be larger or equal to 0"
      %extracted = tensor.extract %arg2[%833, %834] : tensor<512x768xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %9 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%7, %8 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %10 = tensor.empty() : tensor<1x8x1xf32>
    %11 = linalg.fill ins(%cst : f32) outs(%10 : tensor<1x8x1xf32>) -> tensor<1x8x1xf32>
    %12 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%9 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %13 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%12 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %14 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %13[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %15 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%9, %14 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %16 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15, %15 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %17 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%16 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %18 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%17 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %19 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%18 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %20 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%19 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %21 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %20[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %22 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15, %21 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %23 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%22, %arg3 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %24 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%23, %arg4 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %25 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%24 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %collapsed = tensor.collapse_shape %25 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %26 = tensor.empty() : tensor<768x768xf32>
    %27 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg5 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %28 = tensor.empty() : tensor<8x768xf32>
    %29 = linalg.fill ins(%cst : f32) outs(%28 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %30 = linalg.matmul ins(%collapsed, %27 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %31 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg6, %30 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %32 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg7 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %33 = linalg.matmul ins(%collapsed, %32 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %34 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg8, %33 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_8 = tensor.expand_shape %34 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %35 = tensor.empty() : tensor<1x12x8x64xf32>
    %36 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_8 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %37 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg9 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %38 = linalg.matmul ins(%collapsed, %37 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %39 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg10, %38 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_9 = tensor.expand_shape %39 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %40 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_9 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_10 = tensor.expand_shape %31 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %41 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_10 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %42 = tensor.empty() : tensor<1x12x64x8xf32>
    %43 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_11 = tensor.collapse_shape %41 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_12 = tensor.collapse_shape %43 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %44 = tensor.empty() : tensor<12x8x8xf32>
    %45 = linalg.fill ins(%cst : f32) outs(%44 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %46 = linalg.batch_matmul ins(%collapsed_11, %collapsed_12 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_13 = tensor.expand_shape %46 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %47 = tensor.empty() : tensor<1x12x8x8xf32>
    %48 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_13 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %49 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %50 = tensor.empty() : tensor<1x12x8x1xi64>
    %51 = linalg.fill ins(%c0_i64 : i64) outs(%50 : tensor<1x12x8x1xi64>) -> tensor<1x12x8x1xi64>
    %52 = tensor.empty() : tensor<1x12x8x1xf32>
    %53 = linalg.fill ins(%cst_0 : f32) outs(%52 : tensor<1x12x8x1xf32>) -> tensor<1x12x8x1xf32>
    %54:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%49 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %55 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %54#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %56 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %57 = linalg.fill ins(%cst : f32) outs(%52 : tensor<1x12x8x1xf32>) -> tensor<1x12x8x1xf32>
    %58 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%56 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %59 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%56, %58 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %60 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_14 = tensor.collapse_shape %60 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_15 = tensor.collapse_shape %40 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %61 = tensor.empty() : tensor<12x8x64xf32>
    %62 = linalg.fill ins(%cst : f32) outs(%61 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %63 = linalg.batch_matmul ins(%collapsed_14, %collapsed_15 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_16 = tensor.expand_shape %63 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %64 = tensor.empty() : tensor<1x8x12x64xf32>
    %65 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_16 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %66 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%65 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_17 = tensor.collapse_shape %66 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %67 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg11 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %68 = linalg.matmul ins(%collapsed_17, %67 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %69 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg12, %68 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_18 = tensor.expand_shape %69 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %70 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_18 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %71 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%70, %25 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %72 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%71 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %73 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%72 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %74 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %73[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %75 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%71, %74 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %76 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%75, %75 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %77 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%76 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %78 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%77 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %79 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%78 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %80 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%79 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %81 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %80[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %82 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%75, %81 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %83 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%82, %arg13 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %84 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%83, %arg14 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_19 = tensor.collapse_shape %84 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %85 = tensor.empty() : tensor<768x3072xf32>
    %86 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg15 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %87 = tensor.empty() : tensor<8x3072xf32>
    %88 = linalg.fill ins(%cst : f32) outs(%87 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %89 = linalg.matmul ins(%collapsed_19, %86 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %90 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg16, %89 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_20 = tensor.expand_shape %90 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %91 = tensor.empty() : tensor<1x8x3072xf32>
    %92 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_20 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_21 = tensor.collapse_shape %92 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %93 = tensor.empty() : tensor<3072x768xf32>
    %94 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg17 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %95 = linalg.matmul ins(%collapsed_21, %94 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %96 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg18, %95 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_22 = tensor.expand_shape %96 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %97 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_22 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %98 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%97, %84 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %99 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%98 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %100 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%99 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %101 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %100[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %102 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%98, %101 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %103 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%102, %102 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %104 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%103 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %105 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%104 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %106 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%105 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %107 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%106 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %108 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %107[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %109 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%102, %108 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %110 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%109, %arg19 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %111 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%110, %arg20 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_23 = tensor.collapse_shape %111 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %112 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg21 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %113 = linalg.matmul ins(%collapsed_23, %112 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %114 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg22, %113 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %115 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg23 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %116 = linalg.matmul ins(%collapsed_23, %115 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %117 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg24, %116 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_24 = tensor.expand_shape %117 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %118 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_24 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %119 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg25 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %120 = linalg.matmul ins(%collapsed_23, %119 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %121 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg26, %120 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_25 = tensor.expand_shape %121 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %122 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_25 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_26 = tensor.expand_shape %114 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %123 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_26 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %124 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%118 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_27 = tensor.collapse_shape %123 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_28 = tensor.collapse_shape %124 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %125 = linalg.batch_matmul ins(%collapsed_27, %collapsed_28 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_29 = tensor.expand_shape %125 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %126 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_29 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %127 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%126, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %128:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%127 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %129 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%127, %128#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %130 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%129 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %131 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%130 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %132 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%130, %131 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %133 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%132 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_30 = tensor.collapse_shape %133 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_31 = tensor.collapse_shape %122 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %134 = linalg.batch_matmul ins(%collapsed_30, %collapsed_31 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_32 = tensor.expand_shape %134 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %135 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_32 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %136 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%135 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_33 = tensor.collapse_shape %136 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %137 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg27 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %138 = linalg.matmul ins(%collapsed_33, %137 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %139 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg28, %138 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_34 = tensor.expand_shape %139 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %140 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_34 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %141 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%140, %111 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %142 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%141 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %143 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%142 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %144 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %143[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %145 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%141, %144 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %146 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%145, %145 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %147 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%146 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %148 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%147 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %149 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%148 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %150 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%149 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %151 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %150[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %152 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%145, %151 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %153 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%152, %arg29 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %154 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%153, %arg30 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_35 = tensor.collapse_shape %154 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %155 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg31 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %156 = linalg.matmul ins(%collapsed_35, %155 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %157 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg32, %156 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_36 = tensor.expand_shape %157 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %158 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_36 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_37 = tensor.collapse_shape %158 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %159 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg33 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %160 = linalg.matmul ins(%collapsed_37, %159 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %161 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg34, %160 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_38 = tensor.expand_shape %161 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %162 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_38 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %163 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%162, %154 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %164 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%163 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %165 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%164 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %166 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %165[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %167 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%163, %166 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %168 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%167, %167 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %169 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%168 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %170 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%169 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %171 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%170 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %172 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%171 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %173 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %172[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %174 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%167, %173 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %175 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%174, %arg35 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %176 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%175, %arg36 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_39 = tensor.collapse_shape %176 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %177 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg37 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %178 = linalg.matmul ins(%collapsed_39, %177 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %179 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg38, %178 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %180 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg39 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %181 = linalg.matmul ins(%collapsed_39, %180 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %182 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg40, %181 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_40 = tensor.expand_shape %182 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %183 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_40 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %184 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg41 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %185 = linalg.matmul ins(%collapsed_39, %184 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %186 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg42, %185 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_41 = tensor.expand_shape %186 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %187 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_41 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_42 = tensor.expand_shape %179 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %188 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_42 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %189 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%183 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_43 = tensor.collapse_shape %188 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_44 = tensor.collapse_shape %189 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %190 = linalg.batch_matmul ins(%collapsed_43, %collapsed_44 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_45 = tensor.expand_shape %190 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %191 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_45 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %192 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%191, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %193:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%192 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %194 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%192, %193#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %195 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%194 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %196 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%195 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %197 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%195, %196 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %198 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%197 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_46 = tensor.collapse_shape %198 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_47 = tensor.collapse_shape %187 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %199 = linalg.batch_matmul ins(%collapsed_46, %collapsed_47 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_48 = tensor.expand_shape %199 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %200 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_48 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %201 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%200 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_49 = tensor.collapse_shape %201 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %202 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg43 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %203 = linalg.matmul ins(%collapsed_49, %202 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %204 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg44, %203 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_50 = tensor.expand_shape %204 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %205 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_50 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %206 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%205, %176 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %207 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%206 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %208 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%207 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %209 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %208[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %210 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%206, %209 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %211 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%210, %210 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %212 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%211 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %213 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%212 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %214 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%213 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %215 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%214 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %216 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %215[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %217 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%210, %216 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %218 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%217, %arg45 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %219 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%218, %arg46 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_51 = tensor.collapse_shape %219 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %220 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg47 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %221 = linalg.matmul ins(%collapsed_51, %220 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %222 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg48, %221 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_52 = tensor.expand_shape %222 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %223 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_52 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_53 = tensor.collapse_shape %223 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %224 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg49 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %225 = linalg.matmul ins(%collapsed_53, %224 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %226 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg50, %225 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_54 = tensor.expand_shape %226 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %227 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_54 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %228 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%227, %219 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %229 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%228 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %230 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%229 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %231 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %230[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %232 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%228, %231 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %233 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%232, %232 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %234 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%233 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %235 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%234 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %236 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%235 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %237 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%236 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %238 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %237[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %239 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%232, %238 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %240 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%239, %arg51 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %241 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%240, %arg52 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_55 = tensor.collapse_shape %241 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %242 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg53 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %243 = linalg.matmul ins(%collapsed_55, %242 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %244 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg54, %243 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %245 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg55 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %246 = linalg.matmul ins(%collapsed_55, %245 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %247 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg56, %246 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_56 = tensor.expand_shape %247 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %248 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_56 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %249 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg57 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %250 = linalg.matmul ins(%collapsed_55, %249 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %251 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg58, %250 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_57 = tensor.expand_shape %251 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %252 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_57 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_58 = tensor.expand_shape %244 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %253 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_58 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %254 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%248 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_59 = tensor.collapse_shape %253 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_60 = tensor.collapse_shape %254 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %255 = linalg.batch_matmul ins(%collapsed_59, %collapsed_60 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_61 = tensor.expand_shape %255 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %256 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_61 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %257 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%256, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %258:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%257 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %259 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%257, %258#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %260 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%259 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %261 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%260 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %262 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%260, %261 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %263 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%262 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_62 = tensor.collapse_shape %263 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_63 = tensor.collapse_shape %252 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %264 = linalg.batch_matmul ins(%collapsed_62, %collapsed_63 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_64 = tensor.expand_shape %264 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %265 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_64 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %266 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%265 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_65 = tensor.collapse_shape %266 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %267 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg59 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %268 = linalg.matmul ins(%collapsed_65, %267 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %269 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg60, %268 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_66 = tensor.expand_shape %269 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %270 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_66 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %271 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%270, %241 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %272 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%271 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %273 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%272 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %274 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %273[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %275 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%271, %274 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %276 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275, %275 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %277 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%276 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %278 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%277 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %279 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%278 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %280 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%279 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %281 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %280[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %282 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%275, %281 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %283 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%282, %arg61 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %284 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%283, %arg62 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_67 = tensor.collapse_shape %284 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %285 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg63 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %286 = linalg.matmul ins(%collapsed_67, %285 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %287 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg64, %286 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_68 = tensor.expand_shape %287 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %288 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_68 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_69 = tensor.collapse_shape %288 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %289 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg65 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %290 = linalg.matmul ins(%collapsed_69, %289 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %291 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg66, %290 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_70 = tensor.expand_shape %291 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %292 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_70 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %293 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%292, %284 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %294 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%293 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %295 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%294 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %296 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %295[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %297 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%293, %296 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %298 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%297, %297 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %299 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%298 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %300 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%299 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %301 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%300 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %302 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%301 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %303 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %302[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %304 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%297, %303 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %305 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%304, %arg67 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %306 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%305, %arg68 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_71 = tensor.collapse_shape %306 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %307 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg69 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %308 = linalg.matmul ins(%collapsed_71, %307 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %309 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg70, %308 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %310 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg71 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %311 = linalg.matmul ins(%collapsed_71, %310 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %312 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg72, %311 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_72 = tensor.expand_shape %312 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %313 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_72 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %314 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg73 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %315 = linalg.matmul ins(%collapsed_71, %314 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %316 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg74, %315 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_73 = tensor.expand_shape %316 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %317 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_73 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_74 = tensor.expand_shape %309 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %318 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_74 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %319 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_75 = tensor.collapse_shape %318 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_76 = tensor.collapse_shape %319 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %320 = linalg.batch_matmul ins(%collapsed_75, %collapsed_76 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_77 = tensor.expand_shape %320 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %321 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_77 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %322 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%321, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %323:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%322 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %324 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%322, %323#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %325 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%324 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %326 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%325 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %327 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%325, %326 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %328 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%327 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_78 = tensor.collapse_shape %328 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_79 = tensor.collapse_shape %317 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %329 = linalg.batch_matmul ins(%collapsed_78, %collapsed_79 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_80 = tensor.expand_shape %329 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %330 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_80 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %331 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%330 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_81 = tensor.collapse_shape %331 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %332 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg75 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %333 = linalg.matmul ins(%collapsed_81, %332 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %334 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg76, %333 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_82 = tensor.expand_shape %334 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %335 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_82 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %336 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%335, %306 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %337 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%336 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %338 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%337 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %339 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %338[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %340 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%336, %339 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %341 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%340, %340 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %342 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%341 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %343 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%342 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %344 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%343 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %345 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%344 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %346 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %345[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %347 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%340, %346 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %348 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%347, %arg77 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %349 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%348, %arg78 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_83 = tensor.collapse_shape %349 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %350 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg79 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %351 = linalg.matmul ins(%collapsed_83, %350 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %352 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg80, %351 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_84 = tensor.expand_shape %352 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %353 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_84 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_85 = tensor.collapse_shape %353 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %354 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg81 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %355 = linalg.matmul ins(%collapsed_85, %354 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %356 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg82, %355 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_86 = tensor.expand_shape %356 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %357 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_86 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %358 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%357, %349 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %359 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%358 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %360 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%359 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %361 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %360[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %362 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%358, %361 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %363 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%362, %362 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %364 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%363 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %365 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%364 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %366 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%365 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %367 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%366 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %368 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %367[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %369 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%362, %368 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %370 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%369, %arg83 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %371 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%370, %arg84 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_87 = tensor.collapse_shape %371 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %372 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg85 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %373 = linalg.matmul ins(%collapsed_87, %372 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %374 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg86, %373 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %375 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg87 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %376 = linalg.matmul ins(%collapsed_87, %375 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %377 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg88, %376 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_88 = tensor.expand_shape %377 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %378 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_88 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %379 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg89 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %380 = linalg.matmul ins(%collapsed_87, %379 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %381 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg90, %380 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_89 = tensor.expand_shape %381 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %382 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_89 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_90 = tensor.expand_shape %374 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %383 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_90 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %384 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%378 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_91 = tensor.collapse_shape %383 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_92 = tensor.collapse_shape %384 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %385 = linalg.batch_matmul ins(%collapsed_91, %collapsed_92 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_93 = tensor.expand_shape %385 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %386 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_93 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %387 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%386, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %388:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%387 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %389 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%387, %388#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %390 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%389 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %391 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%390 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %392 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%390, %391 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %393 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%392 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_94 = tensor.collapse_shape %393 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_95 = tensor.collapse_shape %382 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %394 = linalg.batch_matmul ins(%collapsed_94, %collapsed_95 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_96 = tensor.expand_shape %394 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %395 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_96 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %396 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%395 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_97 = tensor.collapse_shape %396 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %397 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg91 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %398 = linalg.matmul ins(%collapsed_97, %397 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %399 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg92, %398 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_98 = tensor.expand_shape %399 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %400 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_98 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %401 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%400, %371 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %402 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%401 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %403 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%402 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %404 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %403[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %405 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%401, %404 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %406 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%405, %405 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %407 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%406 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %408 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%407 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %409 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%408 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %410 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%409 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %411 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %410[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %412 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%405, %411 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %413 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%412, %arg93 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %414 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%413, %arg94 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_99 = tensor.collapse_shape %414 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %415 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg95 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %416 = linalg.matmul ins(%collapsed_99, %415 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %417 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg96, %416 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_100 = tensor.expand_shape %417 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %418 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_100 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_101 = tensor.collapse_shape %418 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %419 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg97 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %420 = linalg.matmul ins(%collapsed_101, %419 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %421 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg98, %420 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_102 = tensor.expand_shape %421 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %422 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_102 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %423 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%422, %414 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %424 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%423 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %425 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%424 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %426 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %425[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %427 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%423, %426 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %428 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%427, %427 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %429 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%428 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %430 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%429 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %431 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%430 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %432 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%431 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %433 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %432[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %434 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%427, %433 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %435 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%434, %arg99 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %436 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%435, %arg100 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_103 = tensor.collapse_shape %436 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %437 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg101 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %438 = linalg.matmul ins(%collapsed_103, %437 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %439 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg102, %438 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %440 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg103 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %441 = linalg.matmul ins(%collapsed_103, %440 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %442 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg104, %441 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_104 = tensor.expand_shape %442 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %443 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_104 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %444 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg105 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %445 = linalg.matmul ins(%collapsed_103, %444 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %446 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg106, %445 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_105 = tensor.expand_shape %446 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %447 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_105 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_106 = tensor.expand_shape %439 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %448 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_106 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %449 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%443 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_107 = tensor.collapse_shape %448 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_108 = tensor.collapse_shape %449 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %450 = linalg.batch_matmul ins(%collapsed_107, %collapsed_108 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_109 = tensor.expand_shape %450 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %451 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_109 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %452 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%451, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %453:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%452 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %454 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%452, %453#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %455 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%454 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %456 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%455 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %457 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%455, %456 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %458 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%457 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_110 = tensor.collapse_shape %458 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_111 = tensor.collapse_shape %447 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %459 = linalg.batch_matmul ins(%collapsed_110, %collapsed_111 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_112 = tensor.expand_shape %459 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %460 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_112 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %461 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%460 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_113 = tensor.collapse_shape %461 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %462 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg107 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %463 = linalg.matmul ins(%collapsed_113, %462 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %464 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg108, %463 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_114 = tensor.expand_shape %464 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %465 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_114 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %466 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%465, %436 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %467 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%466 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %468 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%467 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %469 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %468[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %470 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%466, %469 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %471 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%470, %470 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %472 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%471 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %473 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%472 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %474 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%473 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %475 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%474 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %476 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %475[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %477 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%470, %476 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %478 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%477, %arg109 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %479 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%478, %arg110 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_115 = tensor.collapse_shape %479 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %480 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg111 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %481 = linalg.matmul ins(%collapsed_115, %480 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %482 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg112, %481 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_116 = tensor.expand_shape %482 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %483 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_116 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_117 = tensor.collapse_shape %483 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %484 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg113 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %485 = linalg.matmul ins(%collapsed_117, %484 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %486 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg114, %485 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_118 = tensor.expand_shape %486 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %487 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_118 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %488 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%487, %479 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %489 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%488 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %490 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%489 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %491 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %490[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %492 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%488, %491 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %493 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%492, %492 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %494 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%493 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %495 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%494 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %496 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%495 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %497 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%496 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %498 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %497[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %499 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%492, %498 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %500 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%499, %arg115 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %501 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%500, %arg116 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_119 = tensor.collapse_shape %501 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %502 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg117 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %503 = linalg.matmul ins(%collapsed_119, %502 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %504 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg118, %503 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %505 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg119 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %506 = linalg.matmul ins(%collapsed_119, %505 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %507 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg120, %506 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_120 = tensor.expand_shape %507 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %508 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_120 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %509 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg121 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %510 = linalg.matmul ins(%collapsed_119, %509 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %511 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg122, %510 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_121 = tensor.expand_shape %511 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %512 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_121 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_122 = tensor.expand_shape %504 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %513 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_122 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %514 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%508 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_123 = tensor.collapse_shape %513 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_124 = tensor.collapse_shape %514 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %515 = linalg.batch_matmul ins(%collapsed_123, %collapsed_124 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_125 = tensor.expand_shape %515 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %516 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_125 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %517 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%516, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %518:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%517 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %519 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%517, %518#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %520 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%519 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %521 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%520 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %522 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%520, %521 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %523 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%522 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_126 = tensor.collapse_shape %523 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_127 = tensor.collapse_shape %512 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %524 = linalg.batch_matmul ins(%collapsed_126, %collapsed_127 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_128 = tensor.expand_shape %524 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %525 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_128 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %526 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%525 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_129 = tensor.collapse_shape %526 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %527 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg123 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %528 = linalg.matmul ins(%collapsed_129, %527 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %529 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg124, %528 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_130 = tensor.expand_shape %529 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %530 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_130 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %531 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%530, %501 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %532 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%531 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %533 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%532 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %534 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %533[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %535 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%531, %534 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %536 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%535, %535 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %537 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%536 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %538 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%537 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %539 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%538 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %540 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%539 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %541 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %540[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %542 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%535, %541 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %543 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%542, %arg125 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %544 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%543, %arg126 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_131 = tensor.collapse_shape %544 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %545 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg127 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %546 = linalg.matmul ins(%collapsed_131, %545 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %547 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg128, %546 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_132 = tensor.expand_shape %547 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %548 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_132 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_133 = tensor.collapse_shape %548 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %549 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg129 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %550 = linalg.matmul ins(%collapsed_133, %549 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %551 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg130, %550 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_134 = tensor.expand_shape %551 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %552 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_134 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %553 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%552, %544 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %554 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%553 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %555 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%554 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %556 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %555[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %557 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%553, %556 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %558 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%557, %557 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %559 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%558 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %560 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%559 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %561 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%560 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %562 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%561 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %563 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %562[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %564 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%557, %563 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %565 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%564, %arg131 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %566 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%565, %arg132 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_135 = tensor.collapse_shape %566 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %567 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg133 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %568 = linalg.matmul ins(%collapsed_135, %567 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %569 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg134, %568 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %570 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg135 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %571 = linalg.matmul ins(%collapsed_135, %570 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %572 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg136, %571 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_136 = tensor.expand_shape %572 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %573 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_136 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %574 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg137 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %575 = linalg.matmul ins(%collapsed_135, %574 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %576 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg138, %575 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_137 = tensor.expand_shape %576 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %577 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_137 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_138 = tensor.expand_shape %569 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %578 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_138 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %579 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%573 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_139 = tensor.collapse_shape %578 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_140 = tensor.collapse_shape %579 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %580 = linalg.batch_matmul ins(%collapsed_139, %collapsed_140 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_141 = tensor.expand_shape %580 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %581 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_141 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %582 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%581, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %583:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%582 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %584 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%582, %583#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %585 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %586 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%585 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %587 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%585, %586 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %588 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%587 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_142 = tensor.collapse_shape %588 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_143 = tensor.collapse_shape %577 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %589 = linalg.batch_matmul ins(%collapsed_142, %collapsed_143 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_144 = tensor.expand_shape %589 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %590 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_144 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %591 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_145 = tensor.collapse_shape %591 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %592 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg139 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %593 = linalg.matmul ins(%collapsed_145, %592 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %594 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg140, %593 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_146 = tensor.expand_shape %594 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %595 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_146 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %596 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%595, %566 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %597 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%596 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %598 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%597 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %599 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %598[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %600 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%596, %599 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %601 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%600, %600 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %602 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%601 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %603 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%602 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %604 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%603 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %605 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%604 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %606 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %605[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %607 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%600, %606 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %608 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%607, %arg141 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %609 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%608, %arg142 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_147 = tensor.collapse_shape %609 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %610 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg143 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %611 = linalg.matmul ins(%collapsed_147, %610 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %612 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg144, %611 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_148 = tensor.expand_shape %612 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %613 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_148 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_149 = tensor.collapse_shape %613 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %614 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg145 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %615 = linalg.matmul ins(%collapsed_149, %614 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %616 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg146, %615 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_150 = tensor.expand_shape %616 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %617 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_150 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %618 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%617, %609 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %619 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%618 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %620 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%619 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %621 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %620[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %622 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%618, %621 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %623 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%622, %622 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %624 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%623 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %625 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%624 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %626 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%625 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %627 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%626 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %628 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %627[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %629 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%622, %628 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %630 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%629, %arg147 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %631 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%630, %arg148 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_151 = tensor.collapse_shape %631 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %632 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg149 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %633 = linalg.matmul ins(%collapsed_151, %632 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %634 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg150, %633 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %635 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg151 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %636 = linalg.matmul ins(%collapsed_151, %635 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %637 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg152, %636 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_152 = tensor.expand_shape %637 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %638 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_152 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %639 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg153 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %640 = linalg.matmul ins(%collapsed_151, %639 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %641 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg154, %640 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_153 = tensor.expand_shape %641 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %642 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_153 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_154 = tensor.expand_shape %634 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %643 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_154 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %644 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%638 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_155 = tensor.collapse_shape %643 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_156 = tensor.collapse_shape %644 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %645 = linalg.batch_matmul ins(%collapsed_155, %collapsed_156 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_157 = tensor.expand_shape %645 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %646 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_157 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %647 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%646, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %648:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%647 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %649 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%647, %648#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %650 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%649 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %651 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%650 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %652 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%650, %651 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %653 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%652 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_158 = tensor.collapse_shape %653 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_159 = tensor.collapse_shape %642 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %654 = linalg.batch_matmul ins(%collapsed_158, %collapsed_159 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_160 = tensor.expand_shape %654 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %655 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_160 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %656 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%655 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_161 = tensor.collapse_shape %656 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %657 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg155 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %658 = linalg.matmul ins(%collapsed_161, %657 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %659 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg156, %658 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_162 = tensor.expand_shape %659 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %660 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_162 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %661 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%660, %631 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %662 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%661 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %663 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%662 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %664 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %663[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %665 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%661, %664 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %666 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%665, %665 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %667 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%666 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %668 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%667 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %669 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%668 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %670 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%669 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %671 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %670[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %672 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%665, %671 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %673 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%672, %arg157 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %674 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%673, %arg158 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_163 = tensor.collapse_shape %674 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %675 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg159 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %676 = linalg.matmul ins(%collapsed_163, %675 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %677 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg160, %676 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_164 = tensor.expand_shape %677 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %678 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_164 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_165 = tensor.collapse_shape %678 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %679 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg161 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %680 = linalg.matmul ins(%collapsed_165, %679 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %681 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg162, %680 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_166 = tensor.expand_shape %681 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %682 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_166 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %683 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%682, %674 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %684 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%683 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %685 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%684 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %686 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %685[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %687 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%683, %686 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %688 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%687, %687 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %689 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%688 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %690 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%689 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %691 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%690 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %692 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%691 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %693 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %692[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %694 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%687, %693 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %695 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%694, %arg163 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %696 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%695, %arg164 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_167 = tensor.collapse_shape %696 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %697 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg165 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %698 = linalg.matmul ins(%collapsed_167, %697 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %699 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg166, %698 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %700 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg167 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %701 = linalg.matmul ins(%collapsed_167, %700 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %702 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg168, %701 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_168 = tensor.expand_shape %702 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %703 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_168 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %704 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg169 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %705 = linalg.matmul ins(%collapsed_167, %704 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %706 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg170, %705 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_169 = tensor.expand_shape %706 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %707 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_169 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_170 = tensor.expand_shape %699 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %708 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_170 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %709 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%703 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_171 = tensor.collapse_shape %708 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_172 = tensor.collapse_shape %709 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %710 = linalg.batch_matmul ins(%collapsed_171, %collapsed_172 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_173 = tensor.expand_shape %710 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %711 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_173 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %712 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%711, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %713:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%712 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %714 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%712, %713#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %715 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%714 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %716 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%715 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %717 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%715, %716 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %718 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%717 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_174 = tensor.collapse_shape %718 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_175 = tensor.collapse_shape %707 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %719 = linalg.batch_matmul ins(%collapsed_174, %collapsed_175 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_176 = tensor.expand_shape %719 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %720 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_176 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %721 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%720 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_177 = tensor.collapse_shape %721 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %722 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg171 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %723 = linalg.matmul ins(%collapsed_177, %722 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %724 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg172, %723 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_178 = tensor.expand_shape %724 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %725 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_178 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %726 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%725, %696 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %727 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%726 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %728 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%727 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %729 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %728[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %730 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%726, %729 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %731 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%730, %730 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %732 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%731 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %733 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%732 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %734 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%733 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %735 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%734 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %736 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %735[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %737 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%730, %736 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %738 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%737, %arg173 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %739 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%738, %arg174 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_179 = tensor.collapse_shape %739 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %740 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg175 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %741 = linalg.matmul ins(%collapsed_179, %740 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %742 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg176, %741 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_180 = tensor.expand_shape %742 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %743 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_180 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_181 = tensor.collapse_shape %743 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %744 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg177 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %745 = linalg.matmul ins(%collapsed_181, %744 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %746 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg178, %745 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_182 = tensor.expand_shape %746 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %747 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_182 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %748 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%747, %739 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %749 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%748 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %750 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%749 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %751 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %750[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %752 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%748, %751 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %753 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%752, %752 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %754 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%753 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %755 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%754 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %756 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%755 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %757 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%756 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %758 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %757[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %759 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%752, %758 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %760 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%759, %arg179 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %761 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%760, %arg180 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_183 = tensor.collapse_shape %761 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %762 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg181 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %763 = linalg.matmul ins(%collapsed_183, %762 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %764 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg182, %763 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %765 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg183 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %766 = linalg.matmul ins(%collapsed_183, %765 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %767 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg184, %766 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_184 = tensor.expand_shape %767 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %768 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_184 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %769 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg185 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %770 = linalg.matmul ins(%collapsed_183, %769 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %771 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg186, %770 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_185 = tensor.expand_shape %771 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %772 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_185 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %expanded_186 = tensor.expand_shape %764 [[0, 1], [2, 3]] : tensor<8x768xf32> into tensor<1x8x12x64xf32>
    %773 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_186 : tensor<1x8x12x64xf32>) outs(%35 : tensor<1x12x8x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x64xf32>
    %774 = linalg.generic {indexing_maps = [#map1, #map12], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%768 : tensor<1x12x8x64xf32>) outs(%42 : tensor<1x12x64x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x64x8xf32>
    %collapsed_187 = tensor.collapse_shape %773 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %collapsed_188 = tensor.collapse_shape %774 [[0, 1], [2], [3]] : tensor<1x12x64x8xf32> into tensor<12x64x8xf32>
    %775 = linalg.batch_matmul ins(%collapsed_187, %collapsed_188 : tensor<12x8x64xf32>, tensor<12x64x8xf32>) outs(%45 : tensor<12x8x8xf32>) -> tensor<12x8x8xf32>
    %expanded_189 = tensor.expand_shape %775 [[0, 1], [2], [3]] : tensor<12x8x8xf32> into tensor<1x12x8x8xf32>
    %776 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_189 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_7 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %777 = linalg.generic {indexing_maps = [#map13, #map, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%776, %3 : tensor<1x12x8x8xf32>, tensor<1x1x1x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %778:2 = linalg.generic {indexing_maps = [#map1, #map14, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%777 : tensor<1x12x8x8xf32>) outs(%53, %51 : tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>) {
    ^bb0(%in: f32, %out: f32, %out_201: i64):
      %833 = linalg.index 3 : index
      %834 = arith.index_cast %833 : index to i64
      %835 = arith.maximumf %in, %out : f32
      %836 = arith.cmpf ogt, %in, %out : f32
      %837 = arith.select %836, %834, %out_201 : i64
      linalg.yield %835, %837 : f32, i64
    } -> (tensor<1x12x8x1xf32>, tensor<1x12x8x1xi64>)
    %779 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%777, %778#0 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %780 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%779 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.exp %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %781 = linalg.generic {indexing_maps = [#map1, #map14], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%780 : tensor<1x12x8x8xf32>) outs(%57 : tensor<1x12x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x1xf32>
    %782 = linalg.generic {indexing_maps = [#map13, #map15, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%780, %781 : tensor<1x12x8x8xf32>, tensor<1x12x8x1xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.divf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x12x8x8xf32>
    %783 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%782 : tensor<1x12x8x8xf32>) outs(%47 : tensor<1x12x8x8xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x12x8x8xf32>
    %collapsed_190 = tensor.collapse_shape %783 [[0, 1], [2], [3]] : tensor<1x12x8x8xf32> into tensor<12x8x8xf32>
    %collapsed_191 = tensor.collapse_shape %772 [[0, 1], [2], [3]] : tensor<1x12x8x64xf32> into tensor<12x8x64xf32>
    %784 = linalg.batch_matmul ins(%collapsed_190, %collapsed_191 : tensor<12x8x8xf32>, tensor<12x8x64xf32>) outs(%62 : tensor<12x8x64xf32>) -> tensor<12x8x64xf32>
    %expanded_192 = tensor.expand_shape %784 [[0, 1], [2], [3]] : tensor<12x8x64xf32> into tensor<1x12x8x64xf32>
    %785 = linalg.generic {indexing_maps = [#map1, #map11], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%expanded_192 : tensor<1x12x8x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %786 = linalg.generic {indexing_maps = [#map13, #map1], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%785 : tensor<1x8x12x64xf32>) outs(%64 : tensor<1x8x12x64xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x12x64xf32>
    %collapsed_193 = tensor.collapse_shape %786 [[0, 1], [2, 3]] : tensor<1x8x12x64xf32> into tensor<8x768xf32>
    %787 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg187 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %788 = linalg.matmul ins(%collapsed_193, %787 : tensor<8x768xf32>, tensor<768x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %789 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg188, %788 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_194 = tensor.expand_shape %789 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %790 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_194 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %791 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%790, %761 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %792 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%791 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %793 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%792 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %794 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %793[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %795 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%791, %794 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %796 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%795, %795 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %797 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%796 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %798 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%797 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %799 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%798 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %800 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%799 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %801 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %800[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %802 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%795, %801 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %803 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%802, %arg189 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %804 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%803, %arg190 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %collapsed_195 = tensor.collapse_shape %804 [[0, 1], [2]] : tensor<1x8x768xf32> into tensor<8x768xf32>
    %805 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg191 : tensor<3072x768xf32>) outs(%85 : tensor<768x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x3072xf32>
    %806 = linalg.matmul ins(%collapsed_195, %805 : tensor<8x768xf32>, tensor<768x3072xf32>) outs(%88 : tensor<8x3072xf32>) -> tensor<8x3072xf32>
    %807 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg192, %806 : tensor<3072xf32>, tensor<8x3072xf32>) outs(%87 : tensor<8x3072xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x3072xf32>
    %expanded_196 = tensor.expand_shape %807 [[0, 1], [2]] : tensor<8x3072xf32> into tensor<1x8x3072xf32>
    %808 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_196 : tensor<1x8x3072xf32>) outs(%91 : tensor<1x8x3072xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_2 : f32
      %834 = math.erf %833 : f32
      %835 = arith.addf %834, %cst_1 : f32
      %836 = arith.mulf %835, %cst_3 : f32
      %837 = arith.mulf %in, %836 : f32
      linalg.yield %837 : f32
    } -> tensor<1x8x3072xf32>
    %collapsed_197 = tensor.collapse_shape %808 [[0, 1], [2]] : tensor<1x8x3072xf32> into tensor<8x3072xf32>
    %809 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg193 : tensor<768x3072xf32>) outs(%93 : tensor<3072x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<3072x768xf32>
    %810 = linalg.matmul ins(%collapsed_197, %809 : tensor<8x3072xf32>, tensor<3072x768xf32>) outs(%29 : tensor<8x768xf32>) -> tensor<8x768xf32>
    %811 = linalg.generic {indexing_maps = [#map10, #map8, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg194, %810 : tensor<768xf32>, tensor<8x768xf32>) outs(%28 : tensor<8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<8x768xf32>
    %expanded_198 = tensor.expand_shape %811 [[0, 1], [2]] : tensor<8x768xf32> into tensor<1x8x768xf32>
    %812 = linalg.generic {indexing_maps = [#map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%expanded_198 : tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<1x8x768xf32>
    %813 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%812, %804 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %814 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%813 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %815 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%814 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %816 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %815[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %817 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%813, %816 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.subf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %818 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%817, %817 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %819 = linalg.generic {indexing_maps = [#map3, #map5], iterator_types = ["parallel", "parallel", "reduction"]} ins(%818 : tensor<1x8x768xf32>) outs(%11 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.addf %in, %out : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %820 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%819 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.divf %in, %cst_6 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %821 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%820 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = arith.truncf %cst_4 : f64 to f32
      %834 = arith.addf %in, %833 : f32
      linalg.yield %834 : f32
    } -> tensor<1x8x1xf32>
    %822 = linalg.generic {indexing_maps = [#map6, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%821 : tensor<1x8x1xf32>) outs(%10 : tensor<1x8x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.rsqrt %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x1xf32>
    %823 = linalg.generic {indexing_maps = [#map3], iterator_types = ["parallel", "parallel", "parallel"]} outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%out: f32):
      %833 = linalg.index 1 : index
      %extracted = tensor.extract %822[%c0, %833, %c0] : tensor<1x8x1xf32>
      linalg.yield %extracted : f32
    } -> tensor<1x8x768xf32>
    %824 = linalg.generic {indexing_maps = [#map4, #map4, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%817, %823 : tensor<1x8x768xf32>, tensor<1x8x768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %825 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%824, %arg195 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.mulf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %826 = linalg.generic {indexing_maps = [#map4, #map7, #map3], iterator_types = ["parallel", "parallel", "parallel"]} ins(%825, %arg196 : tensor<1x8x768xf32>, tensor<768xf32>) outs(%4 : tensor<1x8x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x8x768xf32>
    %extracted_slice_199 = tensor.extract_slice %826[0, 0, 0] [1, 1, 768] [1, 1, 1] : tensor<1x8x768xf32> to tensor<1x1x768xf32>
    %collapsed_200 = tensor.collapse_shape %extracted_slice_199 [[0, 1], [2]] : tensor<1x1x768xf32> into tensor<1x768xf32>
    %827 = linalg.generic {indexing_maps = [#map8, #map9], iterator_types = ["parallel", "parallel"]} ins(%arg197 : tensor<768x768xf32>) outs(%26 : tensor<768x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<768x768xf32>
    %828 = tensor.empty() : tensor<1x768xf32>
    %829 = linalg.fill ins(%cst : f32) outs(%828 : tensor<1x768xf32>) -> tensor<1x768xf32>
    %830 = linalg.matmul ins(%collapsed_200, %827 : tensor<1x768xf32>, tensor<768x768xf32>) outs(%829 : tensor<1x768xf32>) -> tensor<1x768xf32>
    %831 = linalg.generic {indexing_maps = [#map10, #map16, #map8], iterator_types = ["parallel", "parallel"]} ins(%arg198, %830 : tensor<768xf32>, tensor<1x768xf32>) outs(%828 : tensor<1x768xf32>) {
    ^bb0(%in: f32, %in_201: f32, %out: f32):
      %833 = arith.addf %in, %in_201 : f32
      linalg.yield %833 : f32
    } -> tensor<1x768xf32>
    %832 = linalg.generic {indexing_maps = [#map16, #map8], iterator_types = ["parallel", "parallel"]} ins(%831 : tensor<1x768xf32>) outs(%828 : tensor<1x768xf32>) {
    ^bb0(%in: f32, %out: f32):
      %833 = math.tanh %in : f32
      linalg.yield %833 : f32
    } -> tensor<1x768xf32>
    return %826, %832, %arg3, %arg13, %arg19, %arg29, %arg35, %arg45, %arg51, %arg61, %arg67, %arg77, %arg83, %arg93, %arg99, %arg109, %arg115, %arg125, %arg131, %arg141, %arg147, %arg157, %arg163, %arg173, %arg179, %arg189, %arg195, %arg200, %arg202, %extracted_slice, %9, %13, %20, %collapsed, %27, %collapsed, %32, %collapsed, %37, %collapsed_11, %collapsed_12, %59, %collapsed_14, %collapsed_15, %collapsed_17, %67, %71, %73, %80, %collapsed_19, %86, %expanded_20, %collapsed_21, %94, %98, %100, %107, %collapsed_23, %112, %collapsed_23, %115, %collapsed_23, %119, %collapsed_27, %collapsed_28, %132, %collapsed_30, %collapsed_31, %collapsed_33, %137, %141, %143, %150, %collapsed_35, %155, %expanded_36, %collapsed_37, %159, %163, %165, %172, %collapsed_39, %177, %collapsed_39, %180, %collapsed_39, %184, %collapsed_43, %collapsed_44, %197, %collapsed_46, %collapsed_47, %collapsed_49, %202, %206, %208, %215, %collapsed_51, %220, %expanded_52, %collapsed_53, %224, %228, %230, %237, %collapsed_55, %242, %collapsed_55, %245, %collapsed_55, %249, %collapsed_59, %collapsed_60, %262, %collapsed_62, %collapsed_63, %collapsed_65, %267, %271, %273, %280, %collapsed_67, %285, %expanded_68, %collapsed_69, %289, %293, %295, %302, %collapsed_71, %307, %collapsed_71, %310, %collapsed_71, %314, %collapsed_75, %collapsed_76, %327, %collapsed_78, %collapsed_79, %collapsed_81, %332, %336, %338, %345, %collapsed_83, %350, %expanded_84, %collapsed_85, %354, %358, %360, %367, %collapsed_87, %372, %collapsed_87, %375, %collapsed_87, %379, %collapsed_91, %collapsed_92, %392, %collapsed_94, %collapsed_95, %collapsed_97, %397, %401, %403, %410, %collapsed_99, %415, %expanded_100, %collapsed_101, %419, %423, %425, %432, %collapsed_103, %437, %collapsed_103, %440, %collapsed_103, %444, %collapsed_107, %collapsed_108, %457, %collapsed_110, %collapsed_111, %collapsed_113, %462, %466, %468, %475, %collapsed_115, %480, %expanded_116, %collapsed_117, %484, %488, %490, %497, %collapsed_119, %502, %collapsed_119, %505, %collapsed_119, %509, %collapsed_123, %collapsed_124, %522, %collapsed_126, %collapsed_127, %collapsed_129, %527, %531, %533, %540, %collapsed_131, %545, %expanded_132, %collapsed_133, %549, %553, %555, %562, %collapsed_135, %567, %collapsed_135, %570, %collapsed_135, %574, %collapsed_139, %collapsed_140, %587, %collapsed_142, %collapsed_143, %collapsed_145, %592, %596, %598, %605, %collapsed_147, %610, %expanded_148, %collapsed_149, %614, %618, %620, %627, %collapsed_151, %632, %collapsed_151, %635, %collapsed_151, %639, %collapsed_155, %collapsed_156, %652, %collapsed_158, %collapsed_159, %collapsed_161, %657, %661, %663, %670, %collapsed_163, %675, %expanded_164, %collapsed_165, %679, %683, %685, %692, %collapsed_167, %697, %collapsed_167, %700, %collapsed_167, %704, %collapsed_171, %collapsed_172, %717, %collapsed_174, %collapsed_175, %collapsed_177, %722, %726, %728, %735, %collapsed_179, %740, %expanded_180, %collapsed_181, %744, %748, %750, %757, %collapsed_183, %762, %collapsed_183, %765, %collapsed_183, %769, %collapsed_187, %collapsed_188, %782, %collapsed_190, %collapsed_191, %collapsed_193, %787, %791, %793, %800, %collapsed_195, %805, %expanded_196, %collapsed_197, %809, %813, %815, %822, %collapsed_200, %827, %832 : tensor<1x8x768xf32>, tensor<1x768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<768xf32>, tensor<1x8xi64>, tensor<1x8xi64>, tensor<1x8xi64>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<12x8x64xf32>, tensor<12x64x8xf32>, tensor<1x12x8x8xf32>, tensor<12x8x8xf32>, tensor<12x8x64xf32>, tensor<8x768xf32>, tensor<768x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<8x768xf32>, tensor<768x3072xf32>, tensor<1x8x3072xf32>, tensor<8x3072xf32>, tensor<3072x768xf32>, tensor<1x8x768xf32>, tensor<1x8x1xf32>, tensor<1x8x1xf32>, tensor<1x768xf32>, tensor<768x768xf32>, tensor<1x768xf32>
  }
}

