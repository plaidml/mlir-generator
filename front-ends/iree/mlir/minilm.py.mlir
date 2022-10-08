func.func @predict(%arg0: !iree_input.buffer_view, %arg1: !iree_input.buffer_view loc(unknown), %arg2: !iree_input.buffer_view loc(unknown)) -> (!iree_input.buffer_view, !iree_input.buffer_view) attributes {iree.abi = "{\22a\22:[[\22ndarray\22,\22i32\22,2,1,512],[\22ndarray\22,\22i32\22,2,1,512],[\22ndarray\22,\22i32\22,2,1,512]],\22r\22:[[\22sdict\22,[\22last_hidden_state\22,[\22ndarray\22,\22f32\22,3,1,512,384]],[\22pooler_output\22,[\22ndarray\22,\22f32\22,2,1,384]]]],\22v\22:1}"} {
  %0 = iree_input.cast.buffer_view_to_tensor %arg0 : !iree_input.buffer_view -> tensor<1x512xi32>
  %1 = iree_input.cast.buffer_view_to_tensor %arg1 : !iree_input.buffer_view -> tensor<1x512xi32>
  %2 = iree_input.cast.buffer_view_to_tensor %arg2 : !iree_input.buffer_view -> tensor<1x512xi32>
  %3:2 = call @__inference_predict_63530(%0, %1, %2) : (tensor<1x512xi32>, tensor<1x512xi32>, tensor<1x512xi32>) -> (tensor<1x512x384xf32>, tensor<1x384xf32>)
  %4 = iree_input.cast.tensor_to_buffer_view %3#0 : tensor<1x512x384xf32> -> !iree_input.buffer_view
  %5 = iree_input.cast.tensor_to_buffer_view %3#1 : tensor<1x384xf32> -> !iree_input.buffer_view
  return %4, %5 : !iree_input.buffer_view, !iree_input.buffer_view
}

func.func private @__inference_predict_63530(%arg0: tensor<1x512xi32> {tf._user_specified_name = "input_ids"}, %arg1: tensor<1x512xi32> {tf._user_specified_name = "attention_mask"} loc(unknown), %arg2: tensor<1x512xi32> {tf._user_specified_name = "token_type_ids"} loc(unknown)) -> (tensor<1x512x384xf32>, tensor<1x384xf32>) attributes {tf._construction_context = "kEagerRuntime", tf._input_shapes = [#tf_type.shape<1x512>, #tf_type.shape<1x512>, #tf_type.shape<1x512>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>], tf.signature.is_stateful} {
  %cst = arith.constant dense<3.840000e+02> : tensor<f32>
  %cst_0 = arith.constant dense<0xFF800000> : tensor<f32>
  %cst_1 = arith.constant dense<-0.000000e+00> : tensor<f32>
  %cst_2 = arith.constant dense<-1.000000e+04> : tensor<f32>
  %cst_3 = arith.constant dense<1.000000e+00> : tensor<f32>
  %cst_4 = arith.constant dense<9.99999996E-13> : tensor<f32>
  %cst_5 = arith.constant dense<9.99999971E-10> : tensor<f32>
  %cst_6 = arith.constant dense<5.000000e-01> : tensor<f32>
  %cst_7 = arith.constant dense<0.707106769> : tensor<f32>
  %cst_8 = arith.constant dense<0.176776692> : tensor<f32>
  %cst_9 = arith.constant dense<"0x000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D0000003E0000003F000000400000004100000042000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F000000500000005100000052000000530000005400000055000000560000005700000058000000590000005A0000005B0000005C0000005D0000005E0000005F000000600000006100000062000000630000006400000065000000660000006700000068000000690000006A0000006B0000006C0000006D0000006E0000006F000000700000007100000072000000730000007400000075000000760000007700000078000000790000007A0000007B0000007C0000007D0000007E0000007F000000800000008100000082000000830000008400000085000000860000008700000088000000890000008A0000008B0000008C0000008D0000008E0000008F000000900000009100000092000000930000009400000095000000960000009700000098000000990000009A0000009B0000009C0000009D0000009E0000009F000000A0000000A1000000A2000000A3000000A4000000A5000000A6000000A7000000A8000000A9000000AA000000AB000000AC000000AD000000AE000000AF000000B0000000B1000000B2000000B3000000B4000000B5000000B6000000B7000000B8000000B9000000BA000000BB000000BC000000BD000000BE000000BF000000C0000000C1000000C2000000C3000000C4000000C5000000C6000000C7000000C8000000C9000000CA000000CB000000CC000000CD000000CE000000CF000000D0000000D1000000D2000000D3000000D4000000D5000000D6000000D7000000D8000000D9000000DA000000DB000000DC000000DD000000DE000000DF000000E0000000E1000000E2000000E3000000E4000000E5000000E6000000E7000000E8000000E9000000EA000000EB000000EC000000ED000000EE000000EF000000F0000000F1000000F2000000F3000000F4000000F5000000F6000000F7000000F8000000F9000000FA000000FB000000FC000000FD000000FE000000FF000000000100000101000002010000030100000401000005010000060100000701000008010000090100000A0100000B0100000C0100000D0100000E0100000F010000100100001101000012010000130100001401000015010000160100001701000018010000190100001A0100001B0100001C0100001D0100001E0100001F010000200100002101000022010000230100002401000025010000260100002701000028010000290100002A0100002B0100002C0100002D0100002E0100002F010000300100003101000032010000330100003401000035010000360100003701000038010000390100003A0100003B0100003C0100003D0100003E0100003F010000400100004101000042010000430100004401000045010000460100004701000048010000490100004A0100004B0100004C0100004D0100004E0100004F010000500100005101000052010000530100005401000055010000560100005701000058010000590100005A0100005B0100005C0100005D0100005E0100005F010000600100006101000062010000630100006401000065010000660100006701000068010000690100006A0100006B0100006C0100006D0100006E0100006F010000700100007101000072010000730100007401000075010000760100007701000078010000790100007A0100007B0100007C0100007D0100007E0100007F010000800100008101000082010000830100008401000085010000860100008701000088010000890100008A0100008B0100008C0100008D0100008E0100008F010000900100009101000092010000930100009401000095010000960100009701000098010000990100009A0100009B0100009C0100009D0100009E0100009F010000A0010000A1010000A2010000A3010000A4010000A5010000A6010000A7010000A8010000A9010000AA010000AB010000AC010000AD010000AE010000AF010000B0010000B1010000B2010000B3010000B4010000B5010000B6010000B7010000B8010000B9010000BA010000BB010000BC010000BD010000BE010000BF010000C0010000C1010000C2010000C3010000C4010000C5010000C6010000C7010000C8010000C9010000CA010000CB010000CC010000CD010000CE010000CF010000D0010000D1010000D2010000D3010000D4010000D5010000D6010000D7010000D8010000D9010000DA010000DB010000DC010000DD010000DE010000DF010000E0010000E1010000E2010000E3010000E4010000E5010000E6010000E7010000E8010000E9010000EA010000EB010000EC010000ED010000EE010000EF010000F0010000F1010000F2010000F3010000F4010000F5010000F6010000F7010000F8010000F9010000FA010000FB010000FC010000FD010000FE010000FF010000"> : tensor<1x512xi32>
  %0 = tensor.expand_shape %arg1 [[0], [1, 2, 3]] : tensor<1x512xi32> into tensor<1x1x1x512xi32>
  %1 = linalg.init_tensor [1, 1, 1, 512] : tensor<1x1x1x512xf32>
  %2 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%0 : tensor<1x1x1x512xi32>) outs(%1 : tensor<1x1x1x512xf32>) {
  ^bb0(%arg3: i32):
    %3531 = arith.sitofp %arg3 : i32 to f32
    linalg.yield %3531 : f32
  } -> tensor<1x1x1x512xf32>
  %3 = linalg.init_tensor [1, 1, 1, 512] : tensor<1x1x1x512xf32>
  %4 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%3 : tensor<1x1x1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x1x1x512xf32>
  %5 = linalg.init_tensor [1, 1, 1, 512] : tensor<1x1x1x512xf32>
  %6 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4, %2 : tensor<1x1x1x512xf32>, tensor<1x1x1x512xf32>) outs(%5 : tensor<1x1x1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x1x1x512xf32>
  %7 = linalg.init_tensor [1, 1, 1, 512] : tensor<1x1x1x512xf32>
  %8 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_2 : tensor<f32>) outs(%7 : tensor<1x1x1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x1x1x512xf32>
  %9 = linalg.init_tensor [1, 1, 1, 512] : tensor<1x1x1x512xf32>
  %10 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%6, %8 : tensor<1x1x1x512xf32>, tensor<1x1x1x512xf32>) outs(%9 : tensor<1x1x1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x1x1x512xf32>
  %11 = ml_program.global_load @__sm_node17__m.bert.embeddings.embeddings : tensor<512x384xf32>
  %12 = linalg.init_tensor [384] : tensor<384xf32>
  %13 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_9, %12 : tensor<1x512xi32>, tensor<384xf32>) outs(%13 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: i32):
    %3531 = arith.index_cast %arg3 : i32 to index
    %3532 = linalg.index 2 : index
    %3533 = tensor.extract %11[%3531, %3532] : tensor<512x384xf32>
    linalg.yield %3533 : f32
  } -> tensor<1x512x384xf32>
  %15 = ml_program.global_load @__sm_node18__m.bert.embeddings.LayerNorm.gamma : tensor<384xf32>
  %16 = ml_program.global_load @__sm_node19__m.bert.embeddings.LayerNorm.beta : tensor<384xf32>
  %17 = ml_program.global_load @__sm_node27__m.bert.encoder.layer.0.attention.dense_output.dense.bias : tensor<384xf32>
  %18 = ml_program.global_load @__sm_node26__m.bert.encoder.layer.0.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %19 = ml_program.global_load @__sm_node28__m.bert.encoder.layer.0.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %20 = ml_program.global_load @__sm_node29__m.bert.encoder.layer.0.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %21 = ml_program.global_load @__sm_node23__m.bert.encoder.layer.0.attention.self_attention.key.bias : tensor<384xf32>
  %22 = ml_program.global_load @__sm_node22__m.bert.encoder.layer.0.attention.self_attention.key.kernel : tensor<384x384xf32>
  %23 = ml_program.global_load @__sm_node21__m.bert.encoder.layer.0.attention.self_attention.query.bias : tensor<384xf32>
  %24 = ml_program.global_load @__sm_node20__m.bert.encoder.layer.0.attention.self_attention.query.kernel : tensor<384x384xf32>
  %25 = ml_program.global_load @__sm_node25__m.bert.encoder.layer.0.attention.self_attention.value.bias : tensor<384xf32>
  %26 = ml_program.global_load @__sm_node24__m.bert.encoder.layer.0.attention.self_attention.value.kernel : tensor<384x384xf32>
  %27 = ml_program.global_load @__sm_node31__m.bert.encoder.layer.0.intermediate.dense.bias : tensor<1536xf32>
  %28 = ml_program.global_load @__sm_node30__m.bert.encoder.layer.0.intermediate.dense.kernel : tensor<384x1536xf32>
  %29 = ml_program.global_load @__sm_node33__m.bert.encoder.layer.0.bert_output.dense.bias : tensor<384xf32>
  %30 = ml_program.global_load @__sm_node32__m.bert.encoder.layer.0.bert_output.dense.kernel : tensor<1536x384xf32>
  %31 = ml_program.global_load @__sm_node34__m.bert.encoder.layer.0.bert_output.LayerNorm.gamma : tensor<384xf32>
  %32 = ml_program.global_load @__sm_node35__m.bert.encoder.layer.0.bert_output.LayerNorm.beta : tensor<384xf32>
  %33 = ml_program.global_load @__sm_node187__m.bert.encoder.layer.10.attention.dense_output.dense.bias : tensor<384xf32>
  %34 = ml_program.global_load @__sm_node186__m.bert.encoder.layer.10.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %35 = ml_program.global_load @__sm_node188__m.bert.encoder.layer.10.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %36 = ml_program.global_load @__sm_node189__m.bert.encoder.layer.10.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %37 = ml_program.global_load @__sm_node183__m.bert.encoder.layer.10.attention.self_attention.key.bias : tensor<384xf32>
  %38 = ml_program.global_load @__sm_node182__m.bert.encoder.layer.10.attention.self_attention.key.kernel : tensor<384x384xf32>
  %39 = ml_program.global_load @__sm_node181__m.bert.encoder.layer.10.attention.self_attention.query.bias : tensor<384xf32>
  %40 = ml_program.global_load @__sm_node180__m.bert.encoder.layer.10.attention.self_attention.query.kernel : tensor<384x384xf32>
  %41 = ml_program.global_load @__sm_node185__m.bert.encoder.layer.10.attention.self_attention.value.bias : tensor<384xf32>
  %42 = ml_program.global_load @__sm_node184__m.bert.encoder.layer.10.attention.self_attention.value.kernel : tensor<384x384xf32>
  %43 = ml_program.global_load @__sm_node191__m.bert.encoder.layer.10.intermediate.dense.bias : tensor<1536xf32>
  %44 = ml_program.global_load @__sm_node190__m.bert.encoder.layer.10.intermediate.dense.kernel : tensor<384x1536xf32>
  %45 = ml_program.global_load @__sm_node193__m.bert.encoder.layer.10.bert_output.dense.bias : tensor<384xf32>
  %46 = ml_program.global_load @__sm_node192__m.bert.encoder.layer.10.bert_output.dense.kernel : tensor<1536x384xf32>
  %47 = ml_program.global_load @__sm_node194__m.bert.encoder.layer.10.bert_output.LayerNorm.gamma : tensor<384xf32>
  %48 = ml_program.global_load @__sm_node195__m.bert.encoder.layer.10.bert_output.LayerNorm.beta : tensor<384xf32>
  %49 = ml_program.global_load @__sm_node203__m.bert.encoder.layer.11.attention.dense_output.dense.bias : tensor<384xf32>
  %50 = ml_program.global_load @__sm_node202__m.bert.encoder.layer.11.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %51 = ml_program.global_load @__sm_node204__m.bert.encoder.layer.11.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %52 = ml_program.global_load @__sm_node205__m.bert.encoder.layer.11.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %53 = ml_program.global_load @__sm_node199__m.bert.encoder.layer.11.attention.self_attention.key.bias : tensor<384xf32>
  %54 = ml_program.global_load @__sm_node198__m.bert.encoder.layer.11.attention.self_attention.key.kernel : tensor<384x384xf32>
  %55 = ml_program.global_load @__sm_node197__m.bert.encoder.layer.11.attention.self_attention.query.bias : tensor<384xf32>
  %56 = ml_program.global_load @__sm_node196__m.bert.encoder.layer.11.attention.self_attention.query.kernel : tensor<384x384xf32>
  %57 = ml_program.global_load @__sm_node201__m.bert.encoder.layer.11.attention.self_attention.value.bias : tensor<384xf32>
  %58 = ml_program.global_load @__sm_node200__m.bert.encoder.layer.11.attention.self_attention.value.kernel : tensor<384x384xf32>
  %59 = ml_program.global_load @__sm_node207__m.bert.encoder.layer.11.intermediate.dense.bias : tensor<1536xf32>
  %60 = ml_program.global_load @__sm_node206__m.bert.encoder.layer.11.intermediate.dense.kernel : tensor<384x1536xf32>
  %61 = ml_program.global_load @__sm_node209__m.bert.encoder.layer.11.bert_output.dense.bias : tensor<384xf32>
  %62 = ml_program.global_load @__sm_node208__m.bert.encoder.layer.11.bert_output.dense.kernel : tensor<1536x384xf32>
  %63 = ml_program.global_load @__sm_node210__m.bert.encoder.layer.11.bert_output.LayerNorm.gamma : tensor<384xf32>
  %64 = ml_program.global_load @__sm_node211__m.bert.encoder.layer.11.bert_output.LayerNorm.beta : tensor<384xf32>
  %65 = ml_program.global_load @__sm_node43__m.bert.encoder.layer.1.attention.dense_output.dense.bias : tensor<384xf32>
  %66 = ml_program.global_load @__sm_node42__m.bert.encoder.layer.1.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %67 = ml_program.global_load @__sm_node44__m.bert.encoder.layer.1.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %68 = ml_program.global_load @__sm_node45__m.bert.encoder.layer.1.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %69 = ml_program.global_load @__sm_node39__m.bert.encoder.layer.1.attention.self_attention.key.bias : tensor<384xf32>
  %70 = ml_program.global_load @__sm_node38__m.bert.encoder.layer.1.attention.self_attention.key.kernel : tensor<384x384xf32>
  %71 = ml_program.global_load @__sm_node37__m.bert.encoder.layer.1.attention.self_attention.query.bias : tensor<384xf32>
  %72 = ml_program.global_load @__sm_node36__m.bert.encoder.layer.1.attention.self_attention.query.kernel : tensor<384x384xf32>
  %73 = ml_program.global_load @__sm_node41__m.bert.encoder.layer.1.attention.self_attention.value.bias : tensor<384xf32>
  %74 = ml_program.global_load @__sm_node40__m.bert.encoder.layer.1.attention.self_attention.value.kernel : tensor<384x384xf32>
  %75 = ml_program.global_load @__sm_node47__m.bert.encoder.layer.1.intermediate.dense.bias : tensor<1536xf32>
  %76 = ml_program.global_load @__sm_node46__m.bert.encoder.layer.1.intermediate.dense.kernel : tensor<384x1536xf32>
  %77 = ml_program.global_load @__sm_node49__m.bert.encoder.layer.1.bert_output.dense.bias : tensor<384xf32>
  %78 = ml_program.global_load @__sm_node48__m.bert.encoder.layer.1.bert_output.dense.kernel : tensor<1536x384xf32>
  %79 = ml_program.global_load @__sm_node50__m.bert.encoder.layer.1.bert_output.LayerNorm.gamma : tensor<384xf32>
  %80 = ml_program.global_load @__sm_node51__m.bert.encoder.layer.1.bert_output.LayerNorm.beta : tensor<384xf32>
  %81 = ml_program.global_load @__sm_node59__m.bert.encoder.layer.2.attention.dense_output.dense.bias : tensor<384xf32>
  %82 = ml_program.global_load @__sm_node58__m.bert.encoder.layer.2.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %83 = ml_program.global_load @__sm_node60__m.bert.encoder.layer.2.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %84 = ml_program.global_load @__sm_node61__m.bert.encoder.layer.2.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %85 = ml_program.global_load @__sm_node55__m.bert.encoder.layer.2.attention.self_attention.key.bias : tensor<384xf32>
  %86 = ml_program.global_load @__sm_node54__m.bert.encoder.layer.2.attention.self_attention.key.kernel : tensor<384x384xf32>
  %87 = ml_program.global_load @__sm_node53__m.bert.encoder.layer.2.attention.self_attention.query.bias : tensor<384xf32>
  %88 = ml_program.global_load @__sm_node52__m.bert.encoder.layer.2.attention.self_attention.query.kernel : tensor<384x384xf32>
  %89 = ml_program.global_load @__sm_node57__m.bert.encoder.layer.2.attention.self_attention.value.bias : tensor<384xf32>
  %90 = ml_program.global_load @__sm_node56__m.bert.encoder.layer.2.attention.self_attention.value.kernel : tensor<384x384xf32>
  %91 = ml_program.global_load @__sm_node63__m.bert.encoder.layer.2.intermediate.dense.bias : tensor<1536xf32>
  %92 = ml_program.global_load @__sm_node62__m.bert.encoder.layer.2.intermediate.dense.kernel : tensor<384x1536xf32>
  %93 = ml_program.global_load @__sm_node65__m.bert.encoder.layer.2.bert_output.dense.bias : tensor<384xf32>
  %94 = ml_program.global_load @__sm_node64__m.bert.encoder.layer.2.bert_output.dense.kernel : tensor<1536x384xf32>
  %95 = ml_program.global_load @__sm_node66__m.bert.encoder.layer.2.bert_output.LayerNorm.gamma : tensor<384xf32>
  %96 = ml_program.global_load @__sm_node67__m.bert.encoder.layer.2.bert_output.LayerNorm.beta : tensor<384xf32>
  %97 = ml_program.global_load @__sm_node75__m.bert.encoder.layer.3.attention.dense_output.dense.bias : tensor<384xf32>
  %98 = ml_program.global_load @__sm_node74__m.bert.encoder.layer.3.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %99 = ml_program.global_load @__sm_node76__m.bert.encoder.layer.3.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %100 = ml_program.global_load @__sm_node77__m.bert.encoder.layer.3.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %101 = ml_program.global_load @__sm_node71__m.bert.encoder.layer.3.attention.self_attention.key.bias : tensor<384xf32>
  %102 = ml_program.global_load @__sm_node70__m.bert.encoder.layer.3.attention.self_attention.key.kernel : tensor<384x384xf32>
  %103 = ml_program.global_load @__sm_node69__m.bert.encoder.layer.3.attention.self_attention.query.bias : tensor<384xf32>
  %104 = ml_program.global_load @__sm_node68__m.bert.encoder.layer.3.attention.self_attention.query.kernel : tensor<384x384xf32>
  %105 = ml_program.global_load @__sm_node73__m.bert.encoder.layer.3.attention.self_attention.value.bias : tensor<384xf32>
  %106 = ml_program.global_load @__sm_node72__m.bert.encoder.layer.3.attention.self_attention.value.kernel : tensor<384x384xf32>
  %107 = ml_program.global_load @__sm_node79__m.bert.encoder.layer.3.intermediate.dense.bias : tensor<1536xf32>
  %108 = ml_program.global_load @__sm_node78__m.bert.encoder.layer.3.intermediate.dense.kernel : tensor<384x1536xf32>
  %109 = ml_program.global_load @__sm_node81__m.bert.encoder.layer.3.bert_output.dense.bias : tensor<384xf32>
  %110 = ml_program.global_load @__sm_node80__m.bert.encoder.layer.3.bert_output.dense.kernel : tensor<1536x384xf32>
  %111 = ml_program.global_load @__sm_node82__m.bert.encoder.layer.3.bert_output.LayerNorm.gamma : tensor<384xf32>
  %112 = ml_program.global_load @__sm_node83__m.bert.encoder.layer.3.bert_output.LayerNorm.beta : tensor<384xf32>
  %113 = ml_program.global_load @__sm_node91__m.bert.encoder.layer.4.attention.dense_output.dense.bias : tensor<384xf32>
  %114 = ml_program.global_load @__sm_node90__m.bert.encoder.layer.4.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %115 = ml_program.global_load @__sm_node92__m.bert.encoder.layer.4.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %116 = ml_program.global_load @__sm_node93__m.bert.encoder.layer.4.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %117 = ml_program.global_load @__sm_node87__m.bert.encoder.layer.4.attention.self_attention.key.bias : tensor<384xf32>
  %118 = ml_program.global_load @__sm_node86__m.bert.encoder.layer.4.attention.self_attention.key.kernel : tensor<384x384xf32>
  %119 = ml_program.global_load @__sm_node85__m.bert.encoder.layer.4.attention.self_attention.query.bias : tensor<384xf32>
  %120 = ml_program.global_load @__sm_node84__m.bert.encoder.layer.4.attention.self_attention.query.kernel : tensor<384x384xf32>
  %121 = ml_program.global_load @__sm_node89__m.bert.encoder.layer.4.attention.self_attention.value.bias : tensor<384xf32>
  %122 = ml_program.global_load @__sm_node88__m.bert.encoder.layer.4.attention.self_attention.value.kernel : tensor<384x384xf32>
  %123 = ml_program.global_load @__sm_node95__m.bert.encoder.layer.4.intermediate.dense.bias : tensor<1536xf32>
  %124 = ml_program.global_load @__sm_node94__m.bert.encoder.layer.4.intermediate.dense.kernel : tensor<384x1536xf32>
  %125 = ml_program.global_load @__sm_node97__m.bert.encoder.layer.4.bert_output.dense.bias : tensor<384xf32>
  %126 = ml_program.global_load @__sm_node96__m.bert.encoder.layer.4.bert_output.dense.kernel : tensor<1536x384xf32>
  %127 = ml_program.global_load @__sm_node98__m.bert.encoder.layer.4.bert_output.LayerNorm.gamma : tensor<384xf32>
  %128 = ml_program.global_load @__sm_node99__m.bert.encoder.layer.4.bert_output.LayerNorm.beta : tensor<384xf32>
  %129 = ml_program.global_load @__sm_node107__m.bert.encoder.layer.5.attention.dense_output.dense.bias : tensor<384xf32>
  %130 = ml_program.global_load @__sm_node106__m.bert.encoder.layer.5.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %131 = ml_program.global_load @__sm_node108__m.bert.encoder.layer.5.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %132 = ml_program.global_load @__sm_node109__m.bert.encoder.layer.5.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %133 = ml_program.global_load @__sm_node103__m.bert.encoder.layer.5.attention.self_attention.key.bias : tensor<384xf32>
  %134 = ml_program.global_load @__sm_node102__m.bert.encoder.layer.5.attention.self_attention.key.kernel : tensor<384x384xf32>
  %135 = ml_program.global_load @__sm_node101__m.bert.encoder.layer.5.attention.self_attention.query.bias : tensor<384xf32>
  %136 = ml_program.global_load @__sm_node100__m.bert.encoder.layer.5.attention.self_attention.query.kernel : tensor<384x384xf32>
  %137 = ml_program.global_load @__sm_node105__m.bert.encoder.layer.5.attention.self_attention.value.bias : tensor<384xf32>
  %138 = ml_program.global_load @__sm_node104__m.bert.encoder.layer.5.attention.self_attention.value.kernel : tensor<384x384xf32>
  %139 = ml_program.global_load @__sm_node111__m.bert.encoder.layer.5.intermediate.dense.bias : tensor<1536xf32>
  %140 = ml_program.global_load @__sm_node110__m.bert.encoder.layer.5.intermediate.dense.kernel : tensor<384x1536xf32>
  %141 = ml_program.global_load @__sm_node113__m.bert.encoder.layer.5.bert_output.dense.bias : tensor<384xf32>
  %142 = ml_program.global_load @__sm_node112__m.bert.encoder.layer.5.bert_output.dense.kernel : tensor<1536x384xf32>
  %143 = ml_program.global_load @__sm_node114__m.bert.encoder.layer.5.bert_output.LayerNorm.gamma : tensor<384xf32>
  %144 = ml_program.global_load @__sm_node115__m.bert.encoder.layer.5.bert_output.LayerNorm.beta : tensor<384xf32>
  %145 = ml_program.global_load @__sm_node123__m.bert.encoder.layer.6.attention.dense_output.dense.bias : tensor<384xf32>
  %146 = ml_program.global_load @__sm_node122__m.bert.encoder.layer.6.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %147 = ml_program.global_load @__sm_node124__m.bert.encoder.layer.6.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %148 = ml_program.global_load @__sm_node125__m.bert.encoder.layer.6.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %149 = ml_program.global_load @__sm_node119__m.bert.encoder.layer.6.attention.self_attention.key.bias : tensor<384xf32>
  %150 = ml_program.global_load @__sm_node118__m.bert.encoder.layer.6.attention.self_attention.key.kernel : tensor<384x384xf32>
  %151 = ml_program.global_load @__sm_node117__m.bert.encoder.layer.6.attention.self_attention.query.bias : tensor<384xf32>
  %152 = ml_program.global_load @__sm_node116__m.bert.encoder.layer.6.attention.self_attention.query.kernel : tensor<384x384xf32>
  %153 = ml_program.global_load @__sm_node121__m.bert.encoder.layer.6.attention.self_attention.value.bias : tensor<384xf32>
  %154 = ml_program.global_load @__sm_node120__m.bert.encoder.layer.6.attention.self_attention.value.kernel : tensor<384x384xf32>
  %155 = ml_program.global_load @__sm_node127__m.bert.encoder.layer.6.intermediate.dense.bias : tensor<1536xf32>
  %156 = ml_program.global_load @__sm_node126__m.bert.encoder.layer.6.intermediate.dense.kernel : tensor<384x1536xf32>
  %157 = ml_program.global_load @__sm_node129__m.bert.encoder.layer.6.bert_output.dense.bias : tensor<384xf32>
  %158 = ml_program.global_load @__sm_node128__m.bert.encoder.layer.6.bert_output.dense.kernel : tensor<1536x384xf32>
  %159 = ml_program.global_load @__sm_node130__m.bert.encoder.layer.6.bert_output.LayerNorm.gamma : tensor<384xf32>
  %160 = ml_program.global_load @__sm_node131__m.bert.encoder.layer.6.bert_output.LayerNorm.beta : tensor<384xf32>
  %161 = ml_program.global_load @__sm_node139__m.bert.encoder.layer.7.attention.dense_output.dense.bias : tensor<384xf32>
  %162 = ml_program.global_load @__sm_node138__m.bert.encoder.layer.7.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %163 = ml_program.global_load @__sm_node140__m.bert.encoder.layer.7.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %164 = ml_program.global_load @__sm_node141__m.bert.encoder.layer.7.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %165 = ml_program.global_load @__sm_node135__m.bert.encoder.layer.7.attention.self_attention.key.bias : tensor<384xf32>
  %166 = ml_program.global_load @__sm_node134__m.bert.encoder.layer.7.attention.self_attention.key.kernel : tensor<384x384xf32>
  %167 = ml_program.global_load @__sm_node133__m.bert.encoder.layer.7.attention.self_attention.query.bias : tensor<384xf32>
  %168 = ml_program.global_load @__sm_node132__m.bert.encoder.layer.7.attention.self_attention.query.kernel : tensor<384x384xf32>
  %169 = ml_program.global_load @__sm_node137__m.bert.encoder.layer.7.attention.self_attention.value.bias : tensor<384xf32>
  %170 = ml_program.global_load @__sm_node136__m.bert.encoder.layer.7.attention.self_attention.value.kernel : tensor<384x384xf32>
  %171 = ml_program.global_load @__sm_node143__m.bert.encoder.layer.7.intermediate.dense.bias : tensor<1536xf32>
  %172 = ml_program.global_load @__sm_node142__m.bert.encoder.layer.7.intermediate.dense.kernel : tensor<384x1536xf32>
  %173 = ml_program.global_load @__sm_node145__m.bert.encoder.layer.7.bert_output.dense.bias : tensor<384xf32>
  %174 = ml_program.global_load @__sm_node144__m.bert.encoder.layer.7.bert_output.dense.kernel : tensor<1536x384xf32>
  %175 = ml_program.global_load @__sm_node146__m.bert.encoder.layer.7.bert_output.LayerNorm.gamma : tensor<384xf32>
  %176 = ml_program.global_load @__sm_node147__m.bert.encoder.layer.7.bert_output.LayerNorm.beta : tensor<384xf32>
  %177 = ml_program.global_load @__sm_node155__m.bert.encoder.layer.8.attention.dense_output.dense.bias : tensor<384xf32>
  %178 = ml_program.global_load @__sm_node154__m.bert.encoder.layer.8.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %179 = ml_program.global_load @__sm_node156__m.bert.encoder.layer.8.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %180 = ml_program.global_load @__sm_node157__m.bert.encoder.layer.8.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %181 = ml_program.global_load @__sm_node151__m.bert.encoder.layer.8.attention.self_attention.key.bias : tensor<384xf32>
  %182 = ml_program.global_load @__sm_node150__m.bert.encoder.layer.8.attention.self_attention.key.kernel : tensor<384x384xf32>
  %183 = ml_program.global_load @__sm_node149__m.bert.encoder.layer.8.attention.self_attention.query.bias : tensor<384xf32>
  %184 = ml_program.global_load @__sm_node148__m.bert.encoder.layer.8.attention.self_attention.query.kernel : tensor<384x384xf32>
  %185 = ml_program.global_load @__sm_node153__m.bert.encoder.layer.8.attention.self_attention.value.bias : tensor<384xf32>
  %186 = ml_program.global_load @__sm_node152__m.bert.encoder.layer.8.attention.self_attention.value.kernel : tensor<384x384xf32>
  %187 = ml_program.global_load @__sm_node159__m.bert.encoder.layer.8.intermediate.dense.bias : tensor<1536xf32>
  %188 = ml_program.global_load @__sm_node158__m.bert.encoder.layer.8.intermediate.dense.kernel : tensor<384x1536xf32>
  %189 = ml_program.global_load @__sm_node161__m.bert.encoder.layer.8.bert_output.dense.bias : tensor<384xf32>
  %190 = ml_program.global_load @__sm_node160__m.bert.encoder.layer.8.bert_output.dense.kernel : tensor<1536x384xf32>
  %191 = ml_program.global_load @__sm_node162__m.bert.encoder.layer.8.bert_output.LayerNorm.gamma : tensor<384xf32>
  %192 = ml_program.global_load @__sm_node163__m.bert.encoder.layer.8.bert_output.LayerNorm.beta : tensor<384xf32>
  %193 = ml_program.global_load @__sm_node171__m.bert.encoder.layer.9.attention.dense_output.dense.bias : tensor<384xf32>
  %194 = ml_program.global_load @__sm_node170__m.bert.encoder.layer.9.attention.dense_output.dense.kernel : tensor<384x384xf32>
  %195 = ml_program.global_load @__sm_node172__m.bert.encoder.layer.9.attention.dense_output.LayerNorm.gamma : tensor<384xf32>
  %196 = ml_program.global_load @__sm_node173__m.bert.encoder.layer.9.attention.dense_output.LayerNorm.beta : tensor<384xf32>
  %197 = ml_program.global_load @__sm_node167__m.bert.encoder.layer.9.attention.self_attention.key.bias : tensor<384xf32>
  %198 = ml_program.global_load @__sm_node166__m.bert.encoder.layer.9.attention.self_attention.key.kernel : tensor<384x384xf32>
  %199 = ml_program.global_load @__sm_node165__m.bert.encoder.layer.9.attention.self_attention.query.bias : tensor<384xf32>
  %200 = ml_program.global_load @__sm_node164__m.bert.encoder.layer.9.attention.self_attention.query.kernel : tensor<384x384xf32>
  %201 = ml_program.global_load @__sm_node169__m.bert.encoder.layer.9.attention.self_attention.value.bias : tensor<384xf32>
  %202 = ml_program.global_load @__sm_node168__m.bert.encoder.layer.9.attention.self_attention.value.kernel : tensor<384x384xf32>
  %203 = ml_program.global_load @__sm_node175__m.bert.encoder.layer.9.intermediate.dense.bias : tensor<1536xf32>
  %204 = ml_program.global_load @__sm_node174__m.bert.encoder.layer.9.intermediate.dense.kernel : tensor<384x1536xf32>
  %205 = ml_program.global_load @__sm_node177__m.bert.encoder.layer.9.bert_output.dense.bias : tensor<384xf32>
  %206 = ml_program.global_load @__sm_node176__m.bert.encoder.layer.9.bert_output.dense.kernel : tensor<1536x384xf32>
  %207 = ml_program.global_load @__sm_node178__m.bert.encoder.layer.9.bert_output.LayerNorm.gamma : tensor<384xf32>
  %208 = ml_program.global_load @__sm_node179__m.bert.encoder.layer.9.bert_output.LayerNorm.beta : tensor<384xf32>
  %209 = ml_program.global_load @__sm_node213__m.bert.pooler.dense.bias : tensor<384xf32>
  %210 = ml_program.global_load @__sm_node212__m.bert.pooler.dense.kernel : tensor<384x384xf32>
  %211 = ml_program.global_load @__sm_node15__m.bert.embeddings.weight : tensor<30522x384xf32>
  %212 = linalg.init_tensor [384] : tensor<384xf32>
  %213 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %214 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg0, %212 : tensor<1x512xi32>, tensor<384xf32>) outs(%213 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: i32):
    %3531 = arith.index_cast %arg3 : i32 to index
    %3532 = linalg.index 2 : index
    %3533 = tensor.extract %211[%3531, %3532] : tensor<30522x384xf32>
    linalg.yield %3533 : f32
  } -> tensor<1x512x384xf32>
  %215 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %216 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%214, %14 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%215 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %217 = ml_program.global_load @__sm_node16__m.bert.embeddings.token_type_embeddings : tensor<2x384xf32>
  %218 = linalg.init_tensor [384] : tensor<384xf32>
  %219 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %220 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1)>, affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%arg2, %218 : tensor<1x512xi32>, tensor<384xf32>) outs(%219 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: i32):
    %3531 = arith.index_cast %arg3 : i32 to index
    %3532 = linalg.index 2 : index
    %3533 = tensor.extract %217[%3531, %3532] : tensor<2x384xf32>
    linalg.yield %3533 : f32
  } -> tensor<1x512x384xf32>
  %221 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %222 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%216, %220 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%221 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_10 = arith.constant -0.000000e+00 : f32
  %223 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %224 = linalg.fill ins(%cst_10 : f32) outs(%223 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %225 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%222 : tensor<1x512x384xf32>) outs(%224 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %226 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %227 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%226 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %228 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %229 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%225, %227 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%228 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %230 = tensor.expand_shape %229 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %231 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %232 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%230 : tensor<1x512x1xf32>) outs(%231 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %233 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %234 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%222, %232 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%233 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %235 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %236 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%234, %234 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%235 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_11 = arith.constant -0.000000e+00 : f32
  %237 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %238 = linalg.fill ins(%cst_11 : f32) outs(%237 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %239 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%236 : tensor<1x512x384xf32>) outs(%238 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %240 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %241 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%240 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %242 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %243 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%239, %241 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%242 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %244 = tensor.expand_shape %243 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %245 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %246 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%245 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %247 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %248 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%244, %246 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%247 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %249 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%248 : tensor<1x512x1xf32>) outs(%249 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %251 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %252 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%250 : tensor<1x512x1xf32>) outs(%251 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %253 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%15 : tensor<384xf32>) outs(%253 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %255 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%252, %254 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%255 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %257 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%222, %256 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%257 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %259 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %260 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%230 : tensor<1x512x1xf32>) outs(%259 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %261 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %262 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%260, %256 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%261 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %263 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%16 : tensor<384xf32>) outs(%263 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %265 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%264, %262 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%265 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %267 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%258, %266 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%267 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %269 = tensor.collapse_shape %268 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %270 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_12 = arith.constant 0.000000e+00 : f32
  %271 = linalg.fill ins(%cst_12 : f32) outs(%270 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %272 = linalg.matmul ins(%269, %22 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%271 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %273 = tensor.expand_shape %272 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %274 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%21 : tensor<384xf32>) outs(%274 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %276 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%273, %275 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%276 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %278 = tensor.expand_shape %277 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %279 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_13 = arith.constant 0.000000e+00 : f32
  %280 = linalg.fill ins(%cst_13 : f32) outs(%279 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %281 = linalg.matmul ins(%269, %24 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%280 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %282 = tensor.expand_shape %281 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %283 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %284 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%23 : tensor<384xf32>) outs(%283 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %285 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%282, %284 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%285 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %287 = tensor.expand_shape %286 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %288 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%287 : tensor<1x512x12x32xf32>) outs(%288 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %290 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%278 : tensor<1x512x12x32xf32>) outs(%290 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %292 = tensor.collapse_shape %289 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %293 = tensor.collapse_shape %291 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %294 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_14 = arith.constant 0.000000e+00 : f32
  %295 = linalg.fill ins(%cst_14 : f32) outs(%294 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %296 = linalg.batch_matmul ins(%292, %293 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%295 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %297 = tensor.expand_shape %296 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %298 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %299 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%298 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %300 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %301 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%297, %299 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%300 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %302 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %303 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%302 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %304 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %305 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%301, %303 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%304 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %306 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %307 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%306 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %308 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %309 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%305, %307 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%308 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_15 = arith.constant 0xFF800000 : f32
  %310 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %311 = linalg.fill ins(%cst_15 : f32) outs(%310 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %312 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%309 : tensor<1x12x512x512xf32>) outs(%311 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %313 = tensor.expand_shape %312 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %314 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %315 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%313 : tensor<1x12x512x1xf32>) outs(%314 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %316 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %317 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%309, %315 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%316 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %318 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %319 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%317 : tensor<1x12x512x512xf32>) outs(%318 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_16 = arith.constant -0.000000e+00 : f32
  %320 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %321 = linalg.fill ins(%cst_16 : f32) outs(%320 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %322 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%319 : tensor<1x12x512x512xf32>) outs(%321 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %323 = tensor.expand_shape %322 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %324 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %325 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%323 : tensor<1x12x512x1xf32>) outs(%324 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %326 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %327 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%319, %325 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%326 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %328 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_17 = arith.constant 0.000000e+00 : f32
  %329 = linalg.fill ins(%cst_17 : f32) outs(%328 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %330 = linalg.matmul ins(%269, %26 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%329 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %331 = tensor.expand_shape %330 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %332 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %333 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%25 : tensor<384xf32>) outs(%332 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %334 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %335 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%331, %333 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%334 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %336 = tensor.expand_shape %335 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %337 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %338 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%336 : tensor<1x512x12x32xf32>) outs(%337 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %339 = tensor.collapse_shape %327 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %340 = tensor.collapse_shape %338 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %341 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_18 = arith.constant 0.000000e+00 : f32
  %342 = linalg.fill ins(%cst_18 : f32) outs(%341 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %343 = linalg.batch_matmul ins(%339, %340 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%342 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %344 = tensor.expand_shape %343 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %345 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %346 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%344 : tensor<1x12x512x32xf32>) outs(%345 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %347 = tensor.collapse_shape %346 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %348 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_19 = arith.constant 0.000000e+00 : f32
  %349 = linalg.fill ins(%cst_19 : f32) outs(%348 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %350 = linalg.matmul ins(%347, %18 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%349 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %351 = tensor.expand_shape %350 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %352 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %353 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%17 : tensor<384xf32>) outs(%352 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %354 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %355 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%351, %353 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%354 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %356 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %357 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%355, %268 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%356 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_20 = arith.constant -0.000000e+00 : f32
  %358 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %359 = linalg.fill ins(%cst_20 : f32) outs(%358 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %360 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%357 : tensor<1x512x384xf32>) outs(%359 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %361 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %362 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%361 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %363 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %364 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%360, %362 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%363 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %365 = tensor.expand_shape %364 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %366 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %367 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%365 : tensor<1x512x1xf32>) outs(%366 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %368 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %369 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%357, %367 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%368 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %370 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %371 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%369, %369 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%370 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_21 = arith.constant -0.000000e+00 : f32
  %372 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %373 = linalg.fill ins(%cst_21 : f32) outs(%372 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %374 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%371 : tensor<1x512x384xf32>) outs(%373 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %375 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %376 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%375 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %377 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %378 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%374, %376 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%377 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %379 = tensor.expand_shape %378 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %380 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %381 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%380 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %382 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %383 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%379, %381 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%382 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %384 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %385 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%383 : tensor<1x512x1xf32>) outs(%384 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %386 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %387 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%385 : tensor<1x512x1xf32>) outs(%386 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %388 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %389 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%19 : tensor<384xf32>) outs(%388 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %390 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %391 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%387, %389 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%390 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %392 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %393 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%357, %391 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%392 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %394 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %395 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%365 : tensor<1x512x1xf32>) outs(%394 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %396 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %397 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%395, %391 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%396 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %398 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %399 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%20 : tensor<384xf32>) outs(%398 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %400 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %401 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%399, %397 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%400 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %402 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %403 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%393, %401 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%402 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %404 = tensor.collapse_shape %403 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %405 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_22 = arith.constant 0.000000e+00 : f32
  %406 = linalg.fill ins(%cst_22 : f32) outs(%405 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %407 = linalg.matmul ins(%404, %28 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%406 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %408 = tensor.expand_shape %407 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %409 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %410 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%27 : tensor<1536xf32>) outs(%409 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %411 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %412 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%408, %410 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%411 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %413 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %414 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%413 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %415 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %416 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%412, %414 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%415 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %417 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %418 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%417 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %419 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %420 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%412, %418 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%419 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_23 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_24 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %421 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %422 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_23, %420, %cst_24 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%421 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %423 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %424 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%422, %422 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%423 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_25 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %425 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %426 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_25, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%425 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_26 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %427 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %428 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%426, %cst_26 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%427 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %429 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %430 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%428, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%429 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_27 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %431 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %432 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%430, %cst_27 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%431 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %433 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %434 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%432, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%433 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_28 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %435 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %436 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%434, %cst_28 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%435 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %437 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %438 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%436, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%437 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_29 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %439 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %440 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%438, %cst_29 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%439 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %441 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %442 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%440, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%441 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_30 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %443 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %444 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%442, %cst_30 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%443 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %445 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %446 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%444, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%445 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_31 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %447 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %448 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%446, %cst_31 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%447 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %449 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %450 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%448, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%449 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_32 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %451 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %452 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%450, %cst_32 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%451 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_33 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %453 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %454 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_33, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%453 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_34 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %455 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %456 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%454, %cst_34 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%455 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %457 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %458 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%456, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%457 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_35 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %459 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %460 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%458, %cst_35 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%459 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %461 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %462 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%460, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%461 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_36 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %463 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %464 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%462, %cst_36 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%463 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %465 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %466 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%464, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%465 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_37 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %467 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %468 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%466, %cst_37 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%467 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %469 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %470 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%468, %424 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%469 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_38 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %471 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %472 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%470, %cst_38 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%471 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %473 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %474 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%422, %452 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%473 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %475 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %476 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%474, %472 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%475 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %477 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %478 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%477 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %479 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %480 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%476, %478 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%479 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %481 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %482 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%416, %480 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%481 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %483 = tensor.collapse_shape %482 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %484 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_39 = arith.constant 0.000000e+00 : f32
  %485 = linalg.fill ins(%cst_39 : f32) outs(%484 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %486 = linalg.matmul ins(%483, %30 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%485 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %487 = tensor.expand_shape %486 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %488 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %489 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%29 : tensor<384xf32>) outs(%488 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %490 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %491 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%487, %489 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%490 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %492 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %493 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%491, %403 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%492 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_40 = arith.constant -0.000000e+00 : f32
  %494 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %495 = linalg.fill ins(%cst_40 : f32) outs(%494 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %496 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%493 : tensor<1x512x384xf32>) outs(%495 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %497 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %498 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%497 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %499 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %500 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%496, %498 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%499 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %501 = tensor.expand_shape %500 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %502 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %503 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%501 : tensor<1x512x1xf32>) outs(%502 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %504 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %505 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%493, %503 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%504 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %506 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %507 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%505, %505 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%506 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_41 = arith.constant -0.000000e+00 : f32
  %508 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %509 = linalg.fill ins(%cst_41 : f32) outs(%508 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %510 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%507 : tensor<1x512x384xf32>) outs(%509 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %511 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %512 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%511 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %513 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %514 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%510, %512 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%513 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %515 = tensor.expand_shape %514 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %516 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %517 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%516 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %518 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %519 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%515, %517 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%518 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %520 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %521 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%519 : tensor<1x512x1xf32>) outs(%520 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %522 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %523 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%521 : tensor<1x512x1xf32>) outs(%522 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %524 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %525 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%31 : tensor<384xf32>) outs(%524 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %526 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %527 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%523, %525 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%526 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %528 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %529 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%493, %527 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%528 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %530 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %531 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%501 : tensor<1x512x1xf32>) outs(%530 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %532 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %533 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%531, %527 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%532 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %534 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %535 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%32 : tensor<384xf32>) outs(%534 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %536 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %537 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%535, %533 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%536 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %538 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %539 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%529, %537 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%538 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %540 = tensor.collapse_shape %539 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %541 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_42 = arith.constant 0.000000e+00 : f32
  %542 = linalg.fill ins(%cst_42 : f32) outs(%541 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %543 = linalg.matmul ins(%540, %70 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%542 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %544 = tensor.expand_shape %543 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %545 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %546 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%69 : tensor<384xf32>) outs(%545 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %547 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %548 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%544, %546 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%547 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %549 = tensor.expand_shape %548 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %550 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_43 = arith.constant 0.000000e+00 : f32
  %551 = linalg.fill ins(%cst_43 : f32) outs(%550 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %552 = linalg.matmul ins(%540, %72 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%551 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %553 = tensor.expand_shape %552 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %554 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %555 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%71 : tensor<384xf32>) outs(%554 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %556 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %557 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%553, %555 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%556 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %558 = tensor.expand_shape %557 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %559 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %560 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%558 : tensor<1x512x12x32xf32>) outs(%559 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %561 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %562 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%549 : tensor<1x512x12x32xf32>) outs(%561 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %563 = tensor.collapse_shape %560 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %564 = tensor.collapse_shape %562 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %565 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_44 = arith.constant 0.000000e+00 : f32
  %566 = linalg.fill ins(%cst_44 : f32) outs(%565 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %567 = linalg.batch_matmul ins(%563, %564 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%566 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %568 = tensor.expand_shape %567 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %569 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %570 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%569 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %571 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %572 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%568, %570 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%571 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %573 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %574 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%573 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %575 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %576 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%572, %574 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%575 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %577 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %578 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%577 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %579 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %580 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%576, %578 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%579 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_45 = arith.constant 0xFF800000 : f32
  %581 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %582 = linalg.fill ins(%cst_45 : f32) outs(%581 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %583 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%580 : tensor<1x12x512x512xf32>) outs(%582 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %584 = tensor.expand_shape %583 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %585 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %586 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%584 : tensor<1x12x512x1xf32>) outs(%585 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %587 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %588 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%580, %586 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%587 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %589 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %590 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%588 : tensor<1x12x512x512xf32>) outs(%589 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_46 = arith.constant -0.000000e+00 : f32
  %591 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %592 = linalg.fill ins(%cst_46 : f32) outs(%591 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %593 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%590 : tensor<1x12x512x512xf32>) outs(%592 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %594 = tensor.expand_shape %593 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %595 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %596 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%594 : tensor<1x12x512x1xf32>) outs(%595 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %597 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %598 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%590, %596 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%597 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %599 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_47 = arith.constant 0.000000e+00 : f32
  %600 = linalg.fill ins(%cst_47 : f32) outs(%599 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %601 = linalg.matmul ins(%540, %74 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%600 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %602 = tensor.expand_shape %601 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %603 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %604 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%73 : tensor<384xf32>) outs(%603 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %605 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %606 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%602, %604 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%605 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %607 = tensor.expand_shape %606 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %608 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %609 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%607 : tensor<1x512x12x32xf32>) outs(%608 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %610 = tensor.collapse_shape %598 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %611 = tensor.collapse_shape %609 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %612 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_48 = arith.constant 0.000000e+00 : f32
  %613 = linalg.fill ins(%cst_48 : f32) outs(%612 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %614 = linalg.batch_matmul ins(%610, %611 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%613 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %615 = tensor.expand_shape %614 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %616 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %617 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%615 : tensor<1x12x512x32xf32>) outs(%616 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %618 = tensor.collapse_shape %617 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %619 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_49 = arith.constant 0.000000e+00 : f32
  %620 = linalg.fill ins(%cst_49 : f32) outs(%619 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %621 = linalg.matmul ins(%618, %66 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%620 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %622 = tensor.expand_shape %621 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %623 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %624 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%65 : tensor<384xf32>) outs(%623 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %625 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %626 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%622, %624 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%625 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %627 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %628 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%626, %539 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%627 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_50 = arith.constant -0.000000e+00 : f32
  %629 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %630 = linalg.fill ins(%cst_50 : f32) outs(%629 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %631 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%628 : tensor<1x512x384xf32>) outs(%630 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %632 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %633 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%632 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %634 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %635 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%631, %633 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%634 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %636 = tensor.expand_shape %635 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %637 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %638 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%636 : tensor<1x512x1xf32>) outs(%637 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %639 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %640 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%628, %638 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%639 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %641 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %642 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%640, %640 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%641 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_51 = arith.constant -0.000000e+00 : f32
  %643 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %644 = linalg.fill ins(%cst_51 : f32) outs(%643 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %645 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%642 : tensor<1x512x384xf32>) outs(%644 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %646 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %647 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%646 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %648 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %649 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%645, %647 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%648 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %650 = tensor.expand_shape %649 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %651 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %652 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%651 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %653 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %654 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%650, %652 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%653 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %655 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %656 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%654 : tensor<1x512x1xf32>) outs(%655 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %657 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %658 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%656 : tensor<1x512x1xf32>) outs(%657 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %659 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %660 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%67 : tensor<384xf32>) outs(%659 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %661 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %662 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%658, %660 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%661 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %663 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %664 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%628, %662 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%663 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %665 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %666 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%636 : tensor<1x512x1xf32>) outs(%665 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %667 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %668 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%666, %662 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%667 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %669 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %670 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%68 : tensor<384xf32>) outs(%669 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %671 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %672 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%670, %668 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%671 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %673 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %674 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%664, %672 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%673 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %675 = tensor.collapse_shape %674 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %676 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_52 = arith.constant 0.000000e+00 : f32
  %677 = linalg.fill ins(%cst_52 : f32) outs(%676 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %678 = linalg.matmul ins(%675, %76 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%677 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %679 = tensor.expand_shape %678 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %680 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %681 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%75 : tensor<1536xf32>) outs(%680 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %682 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %683 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%679, %681 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%682 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %684 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %685 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%684 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %686 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %687 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%683, %685 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%686 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %688 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %689 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%688 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %690 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %691 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%683, %689 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%690 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_53 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_54 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %692 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %693 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_53, %691, %cst_54 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%692 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %694 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %695 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%693, %693 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%694 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_55 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %696 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %697 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_55, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%696 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_56 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %698 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %699 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%697, %cst_56 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%698 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %700 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %701 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%699, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%700 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_57 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %702 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %703 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%701, %cst_57 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%702 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %704 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %705 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%703, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%704 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_58 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %706 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %707 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%705, %cst_58 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%706 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %708 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %709 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%707, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%708 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_59 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %710 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %711 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%709, %cst_59 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%710 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %712 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %713 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%711, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%712 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_60 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %714 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %715 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%713, %cst_60 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%714 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %716 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %717 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%715, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%716 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_61 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %718 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %719 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%717, %cst_61 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%718 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %720 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %721 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%719, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%720 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_62 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %722 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %723 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%721, %cst_62 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%722 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_63 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %724 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %725 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_63, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%724 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_64 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %726 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %727 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%725, %cst_64 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%726 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %728 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %729 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%727, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%728 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_65 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %730 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %731 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%729, %cst_65 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%730 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %732 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %733 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%731, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%732 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_66 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %734 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %735 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%733, %cst_66 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%734 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %736 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %737 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%735, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%736 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_67 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %738 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %739 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%737, %cst_67 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%738 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %740 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %741 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%739, %695 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%740 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_68 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %742 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %743 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%741, %cst_68 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%742 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %744 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %745 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%693, %723 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%744 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %746 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %747 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%745, %743 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%746 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %748 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %749 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%748 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %750 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %751 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%747, %749 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%750 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %752 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %753 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%687, %751 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%752 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %754 = tensor.collapse_shape %753 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %755 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_69 = arith.constant 0.000000e+00 : f32
  %756 = linalg.fill ins(%cst_69 : f32) outs(%755 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %757 = linalg.matmul ins(%754, %78 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%756 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %758 = tensor.expand_shape %757 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %759 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %760 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%77 : tensor<384xf32>) outs(%759 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %761 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %762 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%758, %760 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%761 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %763 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %764 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%762, %674 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%763 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_70 = arith.constant -0.000000e+00 : f32
  %765 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %766 = linalg.fill ins(%cst_70 : f32) outs(%765 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %767 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%764 : tensor<1x512x384xf32>) outs(%766 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %768 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %769 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%768 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %770 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %771 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%767, %769 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%770 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %772 = tensor.expand_shape %771 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %773 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %774 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%772 : tensor<1x512x1xf32>) outs(%773 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %775 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %776 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%764, %774 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%775 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %777 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %778 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%776, %776 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%777 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_71 = arith.constant -0.000000e+00 : f32
  %779 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %780 = linalg.fill ins(%cst_71 : f32) outs(%779 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %781 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%778 : tensor<1x512x384xf32>) outs(%780 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %782 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %783 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%782 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %784 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %785 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%781, %783 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%784 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %786 = tensor.expand_shape %785 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %787 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %788 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%787 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %789 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %790 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%786, %788 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%789 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %791 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %792 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%790 : tensor<1x512x1xf32>) outs(%791 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %793 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %794 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%792 : tensor<1x512x1xf32>) outs(%793 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %795 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %796 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%79 : tensor<384xf32>) outs(%795 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %797 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %798 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%794, %796 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%797 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %799 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %800 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%764, %798 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%799 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %801 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %802 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%772 : tensor<1x512x1xf32>) outs(%801 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %803 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %804 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%802, %798 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%803 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %805 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %806 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%80 : tensor<384xf32>) outs(%805 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %807 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %808 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%806, %804 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%807 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %809 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %810 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%800, %808 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%809 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %811 = tensor.collapse_shape %810 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %812 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_72 = arith.constant 0.000000e+00 : f32
  %813 = linalg.fill ins(%cst_72 : f32) outs(%812 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %814 = linalg.matmul ins(%811, %86 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%813 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %815 = tensor.expand_shape %814 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %816 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %817 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%85 : tensor<384xf32>) outs(%816 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %818 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %819 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%815, %817 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%818 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %820 = tensor.expand_shape %819 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %821 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_73 = arith.constant 0.000000e+00 : f32
  %822 = linalg.fill ins(%cst_73 : f32) outs(%821 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %823 = linalg.matmul ins(%811, %88 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%822 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %824 = tensor.expand_shape %823 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %825 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %826 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%87 : tensor<384xf32>) outs(%825 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %827 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %828 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%824, %826 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%827 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %829 = tensor.expand_shape %828 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %830 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %831 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%829 : tensor<1x512x12x32xf32>) outs(%830 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %832 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %833 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%820 : tensor<1x512x12x32xf32>) outs(%832 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %834 = tensor.collapse_shape %831 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %835 = tensor.collapse_shape %833 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %836 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_74 = arith.constant 0.000000e+00 : f32
  %837 = linalg.fill ins(%cst_74 : f32) outs(%836 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %838 = linalg.batch_matmul ins(%834, %835 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%837 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %839 = tensor.expand_shape %838 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %840 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %841 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%840 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %842 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %843 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%839, %841 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%842 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %844 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %845 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%844 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %846 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %847 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%843, %845 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%846 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %848 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %849 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%848 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %850 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %851 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%847, %849 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%850 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_75 = arith.constant 0xFF800000 : f32
  %852 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %853 = linalg.fill ins(%cst_75 : f32) outs(%852 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %854 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%851 : tensor<1x12x512x512xf32>) outs(%853 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %855 = tensor.expand_shape %854 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %856 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %857 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%855 : tensor<1x12x512x1xf32>) outs(%856 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %858 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %859 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%851, %857 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%858 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %860 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %861 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%859 : tensor<1x12x512x512xf32>) outs(%860 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_76 = arith.constant -0.000000e+00 : f32
  %862 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %863 = linalg.fill ins(%cst_76 : f32) outs(%862 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %864 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%861 : tensor<1x12x512x512xf32>) outs(%863 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %865 = tensor.expand_shape %864 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %866 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %867 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%865 : tensor<1x12x512x1xf32>) outs(%866 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %868 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %869 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%861, %867 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%868 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %870 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_77 = arith.constant 0.000000e+00 : f32
  %871 = linalg.fill ins(%cst_77 : f32) outs(%870 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %872 = linalg.matmul ins(%811, %90 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%871 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %873 = tensor.expand_shape %872 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %874 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %875 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%89 : tensor<384xf32>) outs(%874 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %876 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %877 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%873, %875 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%876 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %878 = tensor.expand_shape %877 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %879 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %880 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%878 : tensor<1x512x12x32xf32>) outs(%879 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %881 = tensor.collapse_shape %869 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %882 = tensor.collapse_shape %880 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %883 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_78 = arith.constant 0.000000e+00 : f32
  %884 = linalg.fill ins(%cst_78 : f32) outs(%883 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %885 = linalg.batch_matmul ins(%881, %882 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%884 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %886 = tensor.expand_shape %885 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %887 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %888 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%886 : tensor<1x12x512x32xf32>) outs(%887 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %889 = tensor.collapse_shape %888 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %890 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_79 = arith.constant 0.000000e+00 : f32
  %891 = linalg.fill ins(%cst_79 : f32) outs(%890 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %892 = linalg.matmul ins(%889, %82 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%891 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %893 = tensor.expand_shape %892 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %894 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %895 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%81 : tensor<384xf32>) outs(%894 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %896 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %897 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%893, %895 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%896 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %898 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %899 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%897, %810 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%898 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_80 = arith.constant -0.000000e+00 : f32
  %900 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %901 = linalg.fill ins(%cst_80 : f32) outs(%900 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %902 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%899 : tensor<1x512x384xf32>) outs(%901 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %903 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %904 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%903 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %905 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %906 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%902, %904 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%905 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %907 = tensor.expand_shape %906 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %908 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %909 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%907 : tensor<1x512x1xf32>) outs(%908 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %910 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %911 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%899, %909 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%910 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %912 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %913 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%911, %911 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%912 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_81 = arith.constant -0.000000e+00 : f32
  %914 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %915 = linalg.fill ins(%cst_81 : f32) outs(%914 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %916 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%913 : tensor<1x512x384xf32>) outs(%915 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %917 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %918 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%917 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %919 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %920 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%916, %918 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%919 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %921 = tensor.expand_shape %920 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %922 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %923 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%922 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %924 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %925 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%921, %923 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%924 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %926 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %927 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%925 : tensor<1x512x1xf32>) outs(%926 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %928 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %929 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%927 : tensor<1x512x1xf32>) outs(%928 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %930 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %931 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%83 : tensor<384xf32>) outs(%930 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %932 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %933 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%929, %931 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%932 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %934 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %935 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%899, %933 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%934 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %936 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %937 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%907 : tensor<1x512x1xf32>) outs(%936 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %938 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %939 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%937, %933 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%938 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %940 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %941 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%84 : tensor<384xf32>) outs(%940 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %942 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %943 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%941, %939 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%942 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %944 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %945 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%935, %943 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%944 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %946 = tensor.collapse_shape %945 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %947 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_82 = arith.constant 0.000000e+00 : f32
  %948 = linalg.fill ins(%cst_82 : f32) outs(%947 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %949 = linalg.matmul ins(%946, %92 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%948 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %950 = tensor.expand_shape %949 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %951 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %952 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%91 : tensor<1536xf32>) outs(%951 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %953 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %954 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%950, %952 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%953 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %955 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %956 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%955 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %957 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %958 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%954, %956 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%957 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %959 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %960 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%959 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %961 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %962 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%954, %960 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%961 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_83 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_84 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %963 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %964 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_83, %962, %cst_84 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%963 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %965 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %966 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%964, %964 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%965 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_85 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %967 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %968 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_85, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%967 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_86 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %969 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %970 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%968, %cst_86 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%969 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %971 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %972 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%970, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%971 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_87 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %973 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %974 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%972, %cst_87 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%973 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %975 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %976 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%974, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%975 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_88 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %977 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %978 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%976, %cst_88 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%977 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %979 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %980 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%978, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%979 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_89 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %981 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %982 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%980, %cst_89 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%981 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %983 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %984 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%982, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%983 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_90 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %985 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %986 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%984, %cst_90 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%985 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %987 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %988 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%986, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%987 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_91 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %989 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %990 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%988, %cst_91 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%989 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %991 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %992 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%990, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%991 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_92 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %993 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %994 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%992, %cst_92 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%993 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_93 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %995 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %996 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_93, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%995 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_94 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %997 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %998 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%996, %cst_94 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%997 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %999 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1000 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%998, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%999 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_95 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %1001 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1002 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1000, %cst_95 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1001 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1003 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1004 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1002, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1003 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_96 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %1005 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1006 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1004, %cst_96 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1005 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1007 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1008 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1006, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1007 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_97 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %1009 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1010 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1008, %cst_97 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1009 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1011 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1012 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1010, %966 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1011 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_98 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %1013 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1014 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1012, %cst_98 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1013 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1015 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1016 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%964, %994 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1015 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1017 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1018 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1016, %1014 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1017 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1019 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1020 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%1019 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1021 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1022 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1018, %1020 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1021 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1023 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1024 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%958, %1022 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1023 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1025 = tensor.collapse_shape %1024 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %1026 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_99 = arith.constant 0.000000e+00 : f32
  %1027 = linalg.fill ins(%cst_99 : f32) outs(%1026 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1028 = linalg.matmul ins(%1025, %94 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%1027 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1029 = tensor.expand_shape %1028 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1030 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1031 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%93 : tensor<384xf32>) outs(%1030 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1032 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1033 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1029, %1031 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1032 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1034 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1035 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1033, %945 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1034 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_100 = arith.constant -0.000000e+00 : f32
  %1036 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1037 = linalg.fill ins(%cst_100 : f32) outs(%1036 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1038 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1035 : tensor<1x512x384xf32>) outs(%1037 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1039 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1040 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1039 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1041 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1042 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1038, %1040 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1041 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1043 = tensor.expand_shape %1042 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1044 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1045 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1043 : tensor<1x512x1xf32>) outs(%1044 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1046 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1047 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1035, %1045 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1046 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1048 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1049 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1047, %1047 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1048 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_101 = arith.constant -0.000000e+00 : f32
  %1050 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1051 = linalg.fill ins(%cst_101 : f32) outs(%1050 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1052 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1049 : tensor<1x512x384xf32>) outs(%1051 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1053 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1054 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1053 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1055 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1056 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1052, %1054 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1055 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1057 = tensor.expand_shape %1056 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1058 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1059 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1058 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1060 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1061 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1057, %1059 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1060 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1062 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1063 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1061 : tensor<1x512x1xf32>) outs(%1062 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1064 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1065 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1063 : tensor<1x512x1xf32>) outs(%1064 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1066 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1067 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%95 : tensor<384xf32>) outs(%1066 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1068 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1069 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1065, %1067 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1068 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1070 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1071 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1035, %1069 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1070 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1072 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1073 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1043 : tensor<1x512x1xf32>) outs(%1072 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1074 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1075 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1073, %1069 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1074 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1076 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1077 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%96 : tensor<384xf32>) outs(%1076 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1078 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1079 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1077, %1075 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1078 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1080 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1081 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1071, %1079 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1080 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1082 = tensor.collapse_shape %1081 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1083 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_102 = arith.constant 0.000000e+00 : f32
  %1084 = linalg.fill ins(%cst_102 : f32) outs(%1083 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1085 = linalg.matmul ins(%1082, %102 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1084 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1086 = tensor.expand_shape %1085 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1087 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1088 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%101 : tensor<384xf32>) outs(%1087 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1089 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1090 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1086, %1088 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1089 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1091 = tensor.expand_shape %1090 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1092 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_103 = arith.constant 0.000000e+00 : f32
  %1093 = linalg.fill ins(%cst_103 : f32) outs(%1092 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1094 = linalg.matmul ins(%1082, %104 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1093 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1095 = tensor.expand_shape %1094 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1096 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1097 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%103 : tensor<384xf32>) outs(%1096 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1098 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1099 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1095, %1097 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1098 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1100 = tensor.expand_shape %1099 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1101 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1102 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1100 : tensor<1x512x12x32xf32>) outs(%1101 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1103 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %1104 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1091 : tensor<1x512x12x32xf32>) outs(%1103 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %1105 = tensor.collapse_shape %1102 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1106 = tensor.collapse_shape %1104 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %1107 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_104 = arith.constant 0.000000e+00 : f32
  %1108 = linalg.fill ins(%cst_104 : f32) outs(%1107 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1109 = linalg.batch_matmul ins(%1105, %1106 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%1108 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1110 = tensor.expand_shape %1109 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %1111 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1112 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%1111 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1113 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1114 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1110, %1112 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1113 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1115 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1116 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%1115 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1117 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1118 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1114, %1116 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1117 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1119 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1120 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%1119 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1121 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1122 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1118, %1120 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1121 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_105 = arith.constant 0xFF800000 : f32
  %1123 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1124 = linalg.fill ins(%cst_105 : f32) outs(%1123 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1125 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1122 : tensor<1x12x512x512xf32>) outs(%1124 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1126 = tensor.expand_shape %1125 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1127 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1128 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1126 : tensor<1x12x512x1xf32>) outs(%1127 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1129 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1130 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1122, %1128 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1129 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1131 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1132 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1130 : tensor<1x12x512x512xf32>) outs(%1131 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_106 = arith.constant -0.000000e+00 : f32
  %1133 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1134 = linalg.fill ins(%cst_106 : f32) outs(%1133 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1135 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1132 : tensor<1x12x512x512xf32>) outs(%1134 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1136 = tensor.expand_shape %1135 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1137 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1138 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1136 : tensor<1x12x512x1xf32>) outs(%1137 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1139 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1140 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1132, %1138 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1139 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1141 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_107 = arith.constant 0.000000e+00 : f32
  %1142 = linalg.fill ins(%cst_107 : f32) outs(%1141 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1143 = linalg.matmul ins(%1082, %106 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1142 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1144 = tensor.expand_shape %1143 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1145 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1146 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%105 : tensor<384xf32>) outs(%1145 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1147 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1148 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1144, %1146 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1147 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1149 = tensor.expand_shape %1148 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1150 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1151 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1149 : tensor<1x512x12x32xf32>) outs(%1150 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1152 = tensor.collapse_shape %1140 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %1153 = tensor.collapse_shape %1151 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1154 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_108 = arith.constant 0.000000e+00 : f32
  %1155 = linalg.fill ins(%cst_108 : f32) outs(%1154 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1156 = linalg.batch_matmul ins(%1152, %1153 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%1155 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1157 = tensor.expand_shape %1156 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %1158 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %1159 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1157 : tensor<1x12x512x32xf32>) outs(%1158 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %1160 = tensor.collapse_shape %1159 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %1161 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_109 = arith.constant 0.000000e+00 : f32
  %1162 = linalg.fill ins(%cst_109 : f32) outs(%1161 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1163 = linalg.matmul ins(%1160, %98 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1162 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1164 = tensor.expand_shape %1163 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1165 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%97 : tensor<384xf32>) outs(%1165 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1167 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1168 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1164, %1166 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1167 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1169 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1170 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1168, %1081 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1169 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_110 = arith.constant -0.000000e+00 : f32
  %1171 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1172 = linalg.fill ins(%cst_110 : f32) outs(%1171 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1173 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1170 : tensor<1x512x384xf32>) outs(%1172 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1174 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1175 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1174 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1176 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1177 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1173, %1175 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1176 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1178 = tensor.expand_shape %1177 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1179 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1180 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1178 : tensor<1x512x1xf32>) outs(%1179 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1181 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1182 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1170, %1180 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1181 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1183 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1184 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1182, %1182 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1183 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_111 = arith.constant -0.000000e+00 : f32
  %1185 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1186 = linalg.fill ins(%cst_111 : f32) outs(%1185 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1187 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1184 : tensor<1x512x384xf32>) outs(%1186 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1188 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1189 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1188 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1190 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1191 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1187, %1189 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1190 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1192 = tensor.expand_shape %1191 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1193 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1194 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1193 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1195 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1196 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1192, %1194 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1195 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1197 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1198 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1196 : tensor<1x512x1xf32>) outs(%1197 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1199 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1200 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1198 : tensor<1x512x1xf32>) outs(%1199 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1201 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1202 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%99 : tensor<384xf32>) outs(%1201 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1203 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1204 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1200, %1202 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1203 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1205 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1206 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1170, %1204 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1205 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1207 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1208 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1178 : tensor<1x512x1xf32>) outs(%1207 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1209 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1210 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1208, %1204 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1209 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1211 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%100 : tensor<384xf32>) outs(%1211 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1213 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1214 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1212, %1210 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1213 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1215 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1216 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1206, %1214 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1215 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1217 = tensor.collapse_shape %1216 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1218 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_112 = arith.constant 0.000000e+00 : f32
  %1219 = linalg.fill ins(%cst_112 : f32) outs(%1218 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %1220 = linalg.matmul ins(%1217, %108 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%1219 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %1221 = tensor.expand_shape %1220 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %1222 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1223 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%107 : tensor<1536xf32>) outs(%1222 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1224 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1225 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1221, %1223 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1224 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1226 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1227 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%1226 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1228 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1229 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1225, %1227 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1228 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1230 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1231 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%1230 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1232 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1233 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1225, %1231 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1232 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_113 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_114 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %1234 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1235 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_113, %1233, %cst_114 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1234 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %1236 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1237 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1235, %1235 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1236 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_115 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %1238 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1239 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_115, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1238 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_116 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %1240 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1241 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1239, %cst_116 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1240 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1242 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1243 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1241, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1242 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_117 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %1244 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1243, %cst_117 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1244 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1246 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1245, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1246 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_118 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %1248 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1247, %cst_118 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1248 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1250 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1251 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1249, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1250 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_119 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %1252 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1253 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1251, %cst_119 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1252 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1254 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1255 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1253, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1254 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_120 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %1256 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1255, %cst_120 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1256 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1258 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1259 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1257, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1258 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_121 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %1260 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1261 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1259, %cst_121 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1260 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1262 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1263 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1261, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1262 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_122 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %1264 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1263, %cst_122 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1264 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_123 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %1266 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_123, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1266 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_124 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %1268 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1269 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1267, %cst_124 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1268 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1270 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1269, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1270 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_125 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %1272 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1273 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1271, %cst_125 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1272 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1274 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1275 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1273, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1274 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_126 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %1276 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1277 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1275, %cst_126 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1276 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1278 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1279 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1277, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1278 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_127 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %1280 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1281 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1279, %cst_127 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1280 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1282 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1283 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1281, %1237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1282 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_128 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %1284 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1285 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1283, %cst_128 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1284 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1286 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1287 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1235, %1265 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1286 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1288 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1289 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1287, %1285 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1288 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1290 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1291 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%1290 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1292 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1293 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1289, %1291 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1292 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1294 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1295 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1229, %1293 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1294 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1296 = tensor.collapse_shape %1295 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %1297 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_129 = arith.constant 0.000000e+00 : f32
  %1298 = linalg.fill ins(%cst_129 : f32) outs(%1297 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1299 = linalg.matmul ins(%1296, %110 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%1298 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1300 = tensor.expand_shape %1299 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1301 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1302 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%109 : tensor<384xf32>) outs(%1301 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1303 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1304 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1300, %1302 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1303 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1305 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1306 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1304, %1216 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1305 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_130 = arith.constant -0.000000e+00 : f32
  %1307 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1308 = linalg.fill ins(%cst_130 : f32) outs(%1307 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1309 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1306 : tensor<1x512x384xf32>) outs(%1308 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1310 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1311 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1310 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1312 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1313 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1309, %1311 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1312 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1314 = tensor.expand_shape %1313 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1315 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1316 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1314 : tensor<1x512x1xf32>) outs(%1315 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1317 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1318 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1306, %1316 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1317 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1319 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1320 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1318, %1318 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1319 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_131 = arith.constant -0.000000e+00 : f32
  %1321 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1322 = linalg.fill ins(%cst_131 : f32) outs(%1321 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1323 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1320 : tensor<1x512x384xf32>) outs(%1322 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1324 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1325 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1324 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1326 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1327 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1323, %1325 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1326 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1328 = tensor.expand_shape %1327 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1329 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1330 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1329 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1331 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1332 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1328, %1330 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1331 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1333 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1334 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1332 : tensor<1x512x1xf32>) outs(%1333 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1335 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1336 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1334 : tensor<1x512x1xf32>) outs(%1335 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1337 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1338 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%111 : tensor<384xf32>) outs(%1337 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1339 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1340 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1336, %1338 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1339 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1341 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1342 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1306, %1340 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1341 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1343 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1344 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1314 : tensor<1x512x1xf32>) outs(%1343 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1345 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1346 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1344, %1340 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1345 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1347 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1348 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%112 : tensor<384xf32>) outs(%1347 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1349 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1350 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1348, %1346 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1349 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1351 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1352 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1342, %1350 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1351 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1353 = tensor.collapse_shape %1352 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1354 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_132 = arith.constant 0.000000e+00 : f32
  %1355 = linalg.fill ins(%cst_132 : f32) outs(%1354 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1356 = linalg.matmul ins(%1353, %118 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1355 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1357 = tensor.expand_shape %1356 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1358 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1359 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%117 : tensor<384xf32>) outs(%1358 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1360 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1361 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1357, %1359 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1360 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1362 = tensor.expand_shape %1361 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1363 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_133 = arith.constant 0.000000e+00 : f32
  %1364 = linalg.fill ins(%cst_133 : f32) outs(%1363 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1365 = linalg.matmul ins(%1353, %120 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1364 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1366 = tensor.expand_shape %1365 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1367 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1368 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%119 : tensor<384xf32>) outs(%1367 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1369 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1370 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1366, %1368 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1369 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1371 = tensor.expand_shape %1370 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1372 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1373 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1371 : tensor<1x512x12x32xf32>) outs(%1372 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1374 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %1375 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1362 : tensor<1x512x12x32xf32>) outs(%1374 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %1376 = tensor.collapse_shape %1373 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1377 = tensor.collapse_shape %1375 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %1378 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_134 = arith.constant 0.000000e+00 : f32
  %1379 = linalg.fill ins(%cst_134 : f32) outs(%1378 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1380 = linalg.batch_matmul ins(%1376, %1377 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%1379 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1381 = tensor.expand_shape %1380 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %1382 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1383 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%1382 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1384 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1385 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1381, %1383 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1384 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1386 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1387 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%1386 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1388 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1389 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1385, %1387 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1388 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1390 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1391 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%1390 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1392 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1393 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1389, %1391 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1392 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_135 = arith.constant 0xFF800000 : f32
  %1394 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1395 = linalg.fill ins(%cst_135 : f32) outs(%1394 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1396 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1393 : tensor<1x12x512x512xf32>) outs(%1395 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1397 = tensor.expand_shape %1396 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1398 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1399 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1397 : tensor<1x12x512x1xf32>) outs(%1398 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1400 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1401 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1393, %1399 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1400 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1402 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1403 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1401 : tensor<1x12x512x512xf32>) outs(%1402 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_136 = arith.constant -0.000000e+00 : f32
  %1404 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1405 = linalg.fill ins(%cst_136 : f32) outs(%1404 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1406 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1403 : tensor<1x12x512x512xf32>) outs(%1405 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1407 = tensor.expand_shape %1406 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1408 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1409 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1407 : tensor<1x12x512x1xf32>) outs(%1408 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1410 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1411 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1403, %1409 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1410 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1412 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_137 = arith.constant 0.000000e+00 : f32
  %1413 = linalg.fill ins(%cst_137 : f32) outs(%1412 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1414 = linalg.matmul ins(%1353, %122 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1413 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1415 = tensor.expand_shape %1414 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1416 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1417 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%121 : tensor<384xf32>) outs(%1416 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1418 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1419 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1415, %1417 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1418 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1420 = tensor.expand_shape %1419 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1421 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1422 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1420 : tensor<1x512x12x32xf32>) outs(%1421 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1423 = tensor.collapse_shape %1411 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %1424 = tensor.collapse_shape %1422 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1425 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_138 = arith.constant 0.000000e+00 : f32
  %1426 = linalg.fill ins(%cst_138 : f32) outs(%1425 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1427 = linalg.batch_matmul ins(%1423, %1424 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%1426 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1428 = tensor.expand_shape %1427 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %1429 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %1430 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1428 : tensor<1x12x512x32xf32>) outs(%1429 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %1431 = tensor.collapse_shape %1430 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %1432 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_139 = arith.constant 0.000000e+00 : f32
  %1433 = linalg.fill ins(%cst_139 : f32) outs(%1432 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1434 = linalg.matmul ins(%1431, %114 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1433 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1435 = tensor.expand_shape %1434 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1436 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1437 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%113 : tensor<384xf32>) outs(%1436 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1438 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1439 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1435, %1437 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1438 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1440 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1441 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1439, %1352 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1440 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_140 = arith.constant -0.000000e+00 : f32
  %1442 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1443 = linalg.fill ins(%cst_140 : f32) outs(%1442 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1444 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1441 : tensor<1x512x384xf32>) outs(%1443 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1445 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1446 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1445 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1447 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1448 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1444, %1446 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1447 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1449 = tensor.expand_shape %1448 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1450 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1451 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1449 : tensor<1x512x1xf32>) outs(%1450 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1452 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1453 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1441, %1451 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1452 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1454 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1455 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1453, %1453 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1454 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_141 = arith.constant -0.000000e+00 : f32
  %1456 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1457 = linalg.fill ins(%cst_141 : f32) outs(%1456 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1458 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1455 : tensor<1x512x384xf32>) outs(%1457 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1459 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1460 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1459 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1461 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1462 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1458, %1460 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1461 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1463 = tensor.expand_shape %1462 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1464 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1465 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1464 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1466 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1467 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1463, %1465 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1466 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1468 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1469 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1467 : tensor<1x512x1xf32>) outs(%1468 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1470 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1471 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1469 : tensor<1x512x1xf32>) outs(%1470 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1472 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1473 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%115 : tensor<384xf32>) outs(%1472 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1474 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1475 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1471, %1473 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1474 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1476 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1477 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1441, %1475 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1476 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1478 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1479 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1449 : tensor<1x512x1xf32>) outs(%1478 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1480 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1481 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1479, %1475 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1480 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1482 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1483 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%116 : tensor<384xf32>) outs(%1482 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1484 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1485 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1483, %1481 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1484 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1486 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1487 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1477, %1485 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1486 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1488 = tensor.collapse_shape %1487 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1489 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_142 = arith.constant 0.000000e+00 : f32
  %1490 = linalg.fill ins(%cst_142 : f32) outs(%1489 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %1491 = linalg.matmul ins(%1488, %124 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%1490 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %1492 = tensor.expand_shape %1491 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %1493 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1494 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%123 : tensor<1536xf32>) outs(%1493 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1495 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1496 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1492, %1494 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1495 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1497 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1498 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%1497 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1499 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1500 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1496, %1498 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1499 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1501 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1502 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%1501 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1503 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1504 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1496, %1502 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1503 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_143 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_144 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %1505 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1506 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_143, %1504, %cst_144 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1505 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %1507 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1508 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1506, %1506 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1507 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_145 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %1509 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1510 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_145, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1509 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_146 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %1511 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1512 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1510, %cst_146 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1511 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1513 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1514 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1512, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1513 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_147 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %1515 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1516 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1514, %cst_147 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1515 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1517 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1518 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1516, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1517 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_148 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %1519 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1520 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1518, %cst_148 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1519 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1521 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1522 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1520, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1521 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_149 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %1523 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1524 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1522, %cst_149 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1523 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1525 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1526 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1524, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1525 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_150 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %1527 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1528 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1526, %cst_150 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1527 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1529 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1530 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1528, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1529 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_151 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %1531 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1532 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1530, %cst_151 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1531 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1533 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1534 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1532, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1533 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_152 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %1535 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1536 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1534, %cst_152 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1535 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_153 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %1537 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1538 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_153, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1537 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_154 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %1539 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1540 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1538, %cst_154 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1539 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1541 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1542 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1540, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1541 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_155 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %1543 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1544 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1542, %cst_155 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1543 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1545 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1546 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1544, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1545 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_156 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %1547 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1548 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1546, %cst_156 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1547 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1549 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1550 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1548, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1549 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_157 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %1551 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1552 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1550, %cst_157 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1551 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1553 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1554 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1552, %1508 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1553 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_158 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %1555 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1556 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1554, %cst_158 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1555 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1557 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1558 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1506, %1536 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1557 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1559 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1560 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1558, %1556 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1559 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1561 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1562 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%1561 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1563 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1564 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1560, %1562 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1563 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1565 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1566 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1500, %1564 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1565 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1567 = tensor.collapse_shape %1566 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %1568 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_159 = arith.constant 0.000000e+00 : f32
  %1569 = linalg.fill ins(%cst_159 : f32) outs(%1568 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1570 = linalg.matmul ins(%1567, %126 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%1569 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1571 = tensor.expand_shape %1570 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1572 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1573 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%125 : tensor<384xf32>) outs(%1572 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1574 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1575 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1571, %1573 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1574 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1576 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1577 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1575, %1487 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1576 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_160 = arith.constant -0.000000e+00 : f32
  %1578 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1579 = linalg.fill ins(%cst_160 : f32) outs(%1578 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1580 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1577 : tensor<1x512x384xf32>) outs(%1579 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1581 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1582 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1581 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1583 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1584 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1580, %1582 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1583 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1585 = tensor.expand_shape %1584 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1586 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1587 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1585 : tensor<1x512x1xf32>) outs(%1586 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1588 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1589 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1577, %1587 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1588 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1590 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1591 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1589, %1589 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1590 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_161 = arith.constant -0.000000e+00 : f32
  %1592 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1593 = linalg.fill ins(%cst_161 : f32) outs(%1592 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1594 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1591 : tensor<1x512x384xf32>) outs(%1593 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1595 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1596 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1595 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1597 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1598 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1594, %1596 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1597 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1599 = tensor.expand_shape %1598 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1600 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1601 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1600 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1602 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1603 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1599, %1601 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1602 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1604 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1605 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1603 : tensor<1x512x1xf32>) outs(%1604 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1606 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1607 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1605 : tensor<1x512x1xf32>) outs(%1606 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1608 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1609 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%127 : tensor<384xf32>) outs(%1608 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1610 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1611 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1607, %1609 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1610 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1612 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1613 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1577, %1611 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1612 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1614 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1615 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1585 : tensor<1x512x1xf32>) outs(%1614 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1616 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1617 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1615, %1611 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1616 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1618 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1619 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%128 : tensor<384xf32>) outs(%1618 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1620 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1621 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1619, %1617 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1620 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1622 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1623 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1613, %1621 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1622 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1624 = tensor.collapse_shape %1623 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1625 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_162 = arith.constant 0.000000e+00 : f32
  %1626 = linalg.fill ins(%cst_162 : f32) outs(%1625 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1627 = linalg.matmul ins(%1624, %134 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1626 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1628 = tensor.expand_shape %1627 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1629 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1630 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%133 : tensor<384xf32>) outs(%1629 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1631 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1632 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1628, %1630 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1631 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1633 = tensor.expand_shape %1632 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1634 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_163 = arith.constant 0.000000e+00 : f32
  %1635 = linalg.fill ins(%cst_163 : f32) outs(%1634 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1636 = linalg.matmul ins(%1624, %136 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1635 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1637 = tensor.expand_shape %1636 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1638 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1639 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%135 : tensor<384xf32>) outs(%1638 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1640 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1641 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1637, %1639 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1640 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1642 = tensor.expand_shape %1641 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1643 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1644 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1642 : tensor<1x512x12x32xf32>) outs(%1643 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1645 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %1646 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1633 : tensor<1x512x12x32xf32>) outs(%1645 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %1647 = tensor.collapse_shape %1644 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1648 = tensor.collapse_shape %1646 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %1649 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_164 = arith.constant 0.000000e+00 : f32
  %1650 = linalg.fill ins(%cst_164 : f32) outs(%1649 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1651 = linalg.batch_matmul ins(%1647, %1648 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%1650 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1652 = tensor.expand_shape %1651 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %1653 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1654 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%1653 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1655 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1656 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1652, %1654 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1655 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1657 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1658 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%1657 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1659 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1660 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1656, %1658 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1659 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1661 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1662 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%1661 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1663 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1664 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1660, %1662 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1663 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_165 = arith.constant 0xFF800000 : f32
  %1665 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1666 = linalg.fill ins(%cst_165 : f32) outs(%1665 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1667 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1664 : tensor<1x12x512x512xf32>) outs(%1666 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1668 = tensor.expand_shape %1667 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1669 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1670 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1668 : tensor<1x12x512x1xf32>) outs(%1669 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1671 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1672 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1664, %1670 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1671 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1673 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1674 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1672 : tensor<1x12x512x512xf32>) outs(%1673 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_166 = arith.constant -0.000000e+00 : f32
  %1675 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1676 = linalg.fill ins(%cst_166 : f32) outs(%1675 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1677 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1674 : tensor<1x12x512x512xf32>) outs(%1676 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1678 = tensor.expand_shape %1677 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1679 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1680 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1678 : tensor<1x12x512x1xf32>) outs(%1679 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1681 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1682 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1674, %1680 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1681 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1683 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_167 = arith.constant 0.000000e+00 : f32
  %1684 = linalg.fill ins(%cst_167 : f32) outs(%1683 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1685 = linalg.matmul ins(%1624, %138 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1684 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1686 = tensor.expand_shape %1685 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1687 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1688 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%137 : tensor<384xf32>) outs(%1687 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1689 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1690 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1686, %1688 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1689 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1691 = tensor.expand_shape %1690 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1692 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1693 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1691 : tensor<1x512x12x32xf32>) outs(%1692 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1694 = tensor.collapse_shape %1682 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %1695 = tensor.collapse_shape %1693 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1696 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_168 = arith.constant 0.000000e+00 : f32
  %1697 = linalg.fill ins(%cst_168 : f32) outs(%1696 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1698 = linalg.batch_matmul ins(%1694, %1695 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%1697 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1699 = tensor.expand_shape %1698 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %1700 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %1701 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1699 : tensor<1x12x512x32xf32>) outs(%1700 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %1702 = tensor.collapse_shape %1701 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %1703 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_169 = arith.constant 0.000000e+00 : f32
  %1704 = linalg.fill ins(%cst_169 : f32) outs(%1703 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1705 = linalg.matmul ins(%1702, %130 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1704 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1706 = tensor.expand_shape %1705 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1707 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1708 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%129 : tensor<384xf32>) outs(%1707 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1709 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1710 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1706, %1708 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1709 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1711 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1712 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1710, %1623 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1711 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_170 = arith.constant -0.000000e+00 : f32
  %1713 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1714 = linalg.fill ins(%cst_170 : f32) outs(%1713 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1715 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1712 : tensor<1x512x384xf32>) outs(%1714 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1716 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1717 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1716 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1718 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1719 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1715, %1717 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1718 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1720 = tensor.expand_shape %1719 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1721 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1722 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1720 : tensor<1x512x1xf32>) outs(%1721 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1723 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1724 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1712, %1722 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1723 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1725 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1726 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1724, %1724 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1725 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_171 = arith.constant -0.000000e+00 : f32
  %1727 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1728 = linalg.fill ins(%cst_171 : f32) outs(%1727 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1729 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1726 : tensor<1x512x384xf32>) outs(%1728 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1730 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1731 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1730 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1732 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1733 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1729, %1731 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1732 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1734 = tensor.expand_shape %1733 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1735 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1736 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1735 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1737 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1738 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1734, %1736 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1737 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1739 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1740 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1738 : tensor<1x512x1xf32>) outs(%1739 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1741 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1742 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1740 : tensor<1x512x1xf32>) outs(%1741 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1743 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1744 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%131 : tensor<384xf32>) outs(%1743 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1745 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1746 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1742, %1744 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1745 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1747 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1748 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1712, %1746 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1747 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1749 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1750 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1720 : tensor<1x512x1xf32>) outs(%1749 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1751 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1752 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1750, %1746 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1751 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1753 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1754 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%132 : tensor<384xf32>) outs(%1753 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1755 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1756 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1754, %1752 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1755 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1757 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1758 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1748, %1756 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1757 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1759 = tensor.collapse_shape %1758 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1760 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_172 = arith.constant 0.000000e+00 : f32
  %1761 = linalg.fill ins(%cst_172 : f32) outs(%1760 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %1762 = linalg.matmul ins(%1759, %140 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%1761 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %1763 = tensor.expand_shape %1762 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %1764 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1765 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%139 : tensor<1536xf32>) outs(%1764 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1766 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1767 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1763, %1765 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1766 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1768 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1769 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%1768 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1770 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1771 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1767, %1769 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1770 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1772 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1773 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%1772 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1774 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1775 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1767, %1773 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1774 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_173 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_174 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %1776 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1777 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_173, %1775, %cst_174 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1776 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %1778 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1779 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1777, %1777 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1778 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_175 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %1780 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1781 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_175, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1780 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_176 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %1782 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1783 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1781, %cst_176 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1782 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1784 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1785 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1783, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1784 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_177 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %1786 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1787 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1785, %cst_177 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1786 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1788 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1789 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1787, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1788 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_178 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %1790 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1791 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1789, %cst_178 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1790 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1792 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1793 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1791, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1792 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_179 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %1794 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1795 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1793, %cst_179 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1794 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1796 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1797 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1795, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1796 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_180 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %1798 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1799 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1797, %cst_180 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1798 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1800 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1801 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1799, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1800 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_181 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %1802 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1803 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1801, %cst_181 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1802 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1804 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1805 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1803, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1804 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_182 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %1806 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1807 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1805, %cst_182 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1806 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_183 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %1808 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1809 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_183, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1808 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_184 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %1810 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1811 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1809, %cst_184 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1810 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1812 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1813 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1811, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1812 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_185 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %1814 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1815 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1813, %cst_185 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1814 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1816 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1817 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1815, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1816 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_186 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %1818 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1819 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1817, %cst_186 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1818 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1820 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1821 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1819, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1820 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_187 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %1822 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1823 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1821, %cst_187 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1822 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1824 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1825 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1823, %1779 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1824 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_188 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %1826 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1827 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1825, %cst_188 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1826 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1828 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1829 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1777, %1807 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1828 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1830 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1831 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1829, %1827 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1830 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1832 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1833 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%1832 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %1834 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1835 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1831, %1833 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1834 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1836 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %1837 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1771, %1835 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%1836 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %1838 = tensor.collapse_shape %1837 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %1839 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_189 = arith.constant 0.000000e+00 : f32
  %1840 = linalg.fill ins(%cst_189 : f32) outs(%1839 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1841 = linalg.matmul ins(%1838, %142 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%1840 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1842 = tensor.expand_shape %1841 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1843 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1844 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%141 : tensor<384xf32>) outs(%1843 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1845 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1846 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1842, %1844 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1845 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1847 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1848 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1846, %1758 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1847 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_190 = arith.constant -0.000000e+00 : f32
  %1849 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1850 = linalg.fill ins(%cst_190 : f32) outs(%1849 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1851 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1848 : tensor<1x512x384xf32>) outs(%1850 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1852 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1853 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1852 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1854 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1855 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1851, %1853 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1854 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1856 = tensor.expand_shape %1855 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1857 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1858 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1856 : tensor<1x512x1xf32>) outs(%1857 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1859 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1860 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1848, %1858 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1859 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1861 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1862 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1860, %1860 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1861 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_191 = arith.constant -0.000000e+00 : f32
  %1863 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1864 = linalg.fill ins(%cst_191 : f32) outs(%1863 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1865 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1862 : tensor<1x512x384xf32>) outs(%1864 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1866 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1867 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1866 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1868 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1869 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1865, %1867 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1868 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1870 = tensor.expand_shape %1869 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1871 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1872 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%1871 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %1873 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1874 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1870, %1872 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%1873 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1875 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %1876 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1874 : tensor<1x512x1xf32>) outs(%1875 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %1877 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1878 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1876 : tensor<1x512x1xf32>) outs(%1877 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1879 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1880 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%143 : tensor<384xf32>) outs(%1879 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1881 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1882 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1878, %1880 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1881 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1883 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1884 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1848, %1882 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1883 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1885 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1886 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1856 : tensor<1x512x1xf32>) outs(%1885 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1887 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1888 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1886, %1882 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1887 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1889 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1890 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%144 : tensor<384xf32>) outs(%1889 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1891 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1892 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1890, %1888 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1891 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1893 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1894 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1884, %1892 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1893 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1895 = tensor.collapse_shape %1894 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %1896 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_192 = arith.constant 0.000000e+00 : f32
  %1897 = linalg.fill ins(%cst_192 : f32) outs(%1896 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1898 = linalg.matmul ins(%1895, %150 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1897 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1899 = tensor.expand_shape %1898 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1900 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1901 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%149 : tensor<384xf32>) outs(%1900 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1902 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1903 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1899, %1901 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1902 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1904 = tensor.expand_shape %1903 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1905 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_193 = arith.constant 0.000000e+00 : f32
  %1906 = linalg.fill ins(%cst_193 : f32) outs(%1905 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1907 = linalg.matmul ins(%1895, %152 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1906 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1908 = tensor.expand_shape %1907 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1909 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1910 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%151 : tensor<384xf32>) outs(%1909 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1911 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1912 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1908, %1910 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1911 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1913 = tensor.expand_shape %1912 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1914 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1915 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1913 : tensor<1x512x12x32xf32>) outs(%1914 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1916 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %1917 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1904 : tensor<1x512x12x32xf32>) outs(%1916 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %1918 = tensor.collapse_shape %1915 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1919 = tensor.collapse_shape %1917 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %1920 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_194 = arith.constant 0.000000e+00 : f32
  %1921 = linalg.fill ins(%cst_194 : f32) outs(%1920 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1922 = linalg.batch_matmul ins(%1918, %1919 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%1921 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %1923 = tensor.expand_shape %1922 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %1924 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1925 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%1924 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1926 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1927 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1923, %1925 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1926 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1928 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1929 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%1928 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1930 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1931 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1927, %1929 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1930 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1932 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1933 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%1932 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1934 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1935 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1931, %1933 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1934 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_195 = arith.constant 0xFF800000 : f32
  %1936 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1937 = linalg.fill ins(%cst_195 : f32) outs(%1936 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1938 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1935 : tensor<1x12x512x512xf32>) outs(%1937 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1939 = tensor.expand_shape %1938 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1940 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1941 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1939 : tensor<1x12x512x1xf32>) outs(%1940 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1942 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1943 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1935, %1941 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1942 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1944 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1945 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1943 : tensor<1x12x512x512xf32>) outs(%1944 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_196 = arith.constant -0.000000e+00 : f32
  %1946 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %1947 = linalg.fill ins(%cst_196 : f32) outs(%1946 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %1948 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%1945 : tensor<1x12x512x512xf32>) outs(%1947 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %1949 = tensor.expand_shape %1948 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %1950 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1951 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1949 : tensor<1x12x512x1xf32>) outs(%1950 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %1952 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %1953 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1945, %1951 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%1952 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %1954 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_197 = arith.constant 0.000000e+00 : f32
  %1955 = linalg.fill ins(%cst_197 : f32) outs(%1954 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1956 = linalg.matmul ins(%1895, %154 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1955 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1957 = tensor.expand_shape %1956 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1958 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1959 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%153 : tensor<384xf32>) outs(%1958 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1960 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1961 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1957, %1959 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1960 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1962 = tensor.expand_shape %1961 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %1963 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %1964 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1962 : tensor<1x512x12x32xf32>) outs(%1963 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %1965 = tensor.collapse_shape %1953 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %1966 = tensor.collapse_shape %1964 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %1967 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_198 = arith.constant 0.000000e+00 : f32
  %1968 = linalg.fill ins(%cst_198 : f32) outs(%1967 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1969 = linalg.batch_matmul ins(%1965, %1966 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%1968 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %1970 = tensor.expand_shape %1969 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %1971 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %1972 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%1970 : tensor<1x12x512x32xf32>) outs(%1971 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %1973 = tensor.collapse_shape %1972 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %1974 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_199 = arith.constant 0.000000e+00 : f32
  %1975 = linalg.fill ins(%cst_199 : f32) outs(%1974 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1976 = linalg.matmul ins(%1973, %146 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%1975 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %1977 = tensor.expand_shape %1976 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %1978 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1979 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%145 : tensor<384xf32>) outs(%1978 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1980 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1981 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1977, %1979 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1980 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1982 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1983 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1981, %1894 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1982 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_200 = arith.constant -0.000000e+00 : f32
  %1984 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1985 = linalg.fill ins(%cst_200 : f32) outs(%1984 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %1986 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1983 : tensor<1x512x384xf32>) outs(%1985 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %1987 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1988 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%1987 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %1989 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1990 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%1986, %1988 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%1989 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %1991 = tensor.expand_shape %1990 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %1992 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1993 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1991 : tensor<1x512x1xf32>) outs(%1992 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %1994 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1995 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1983, %1993 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1994 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %1996 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %1997 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1995, %1995 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%1996 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_201 = arith.constant -0.000000e+00 : f32
  %1998 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %1999 = linalg.fill ins(%cst_201 : f32) outs(%1998 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2000 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%1997 : tensor<1x512x384xf32>) outs(%1999 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2001 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2002 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2001 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2003 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2004 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2000, %2002 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2003 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2005 = tensor.expand_shape %2004 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2006 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2007 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2006 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2008 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2009 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2005, %2007 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2008 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2010 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2011 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2009 : tensor<1x512x1xf32>) outs(%2010 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2012 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2013 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2011 : tensor<1x512x1xf32>) outs(%2012 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2014 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2015 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%147 : tensor<384xf32>) outs(%2014 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2016 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2017 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2013, %2015 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2016 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2018 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2019 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1983, %2017 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2018 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2020 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2021 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1991 : tensor<1x512x1xf32>) outs(%2020 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2022 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2023 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2021, %2017 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2022 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2024 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2025 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%148 : tensor<384xf32>) outs(%2024 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2026 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2027 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2025, %2023 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2026 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2028 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2029 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2019, %2027 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2028 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2030 = tensor.collapse_shape %2029 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2031 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_202 = arith.constant 0.000000e+00 : f32
  %2032 = linalg.fill ins(%cst_202 : f32) outs(%2031 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2033 = linalg.matmul ins(%2030, %156 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%2032 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2034 = tensor.expand_shape %2033 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %2035 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2036 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%155 : tensor<1536xf32>) outs(%2035 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2037 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2038 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2034, %2036 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2037 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2039 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2040 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%2039 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2041 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2042 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2038, %2040 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2041 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2043 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2044 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%2043 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2045 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2046 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2038, %2044 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2045 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_203 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_204 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %2047 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2048 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_203, %2046, %cst_204 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2047 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %2049 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2050 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2048, %2048 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2049 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_205 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2051 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2052 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_205, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2051 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_206 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %2053 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2054 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2052, %cst_206 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2053 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2055 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2056 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2054, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2055 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_207 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %2057 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2058 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2056, %cst_207 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2057 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2059 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2060 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2058, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2059 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_208 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %2061 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2062 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2060, %cst_208 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2061 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2063 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2064 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2062, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2063 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_209 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %2065 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2066 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2064, %cst_209 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2065 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2067 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2068 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2066, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2067 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_210 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %2069 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2070 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2068, %cst_210 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2069 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2071 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2072 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2070, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2071 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_211 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %2073 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2074 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2072, %cst_211 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2073 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2075 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2076 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2074, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2075 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_212 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %2077 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2078 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2076, %cst_212 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2077 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_213 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2079 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2080 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_213, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2079 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_214 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %2081 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2082 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2080, %cst_214 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2081 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2083 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2084 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2082, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2083 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_215 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %2085 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2086 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2084, %cst_215 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2085 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2087 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2088 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2086, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2087 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_216 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %2089 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2090 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2088, %cst_216 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2089 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2091 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2092 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2090, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2091 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_217 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %2093 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2094 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2092, %cst_217 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2093 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2095 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2096 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2094, %2050 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2095 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_218 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %2097 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2098 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2096, %cst_218 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2097 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2099 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2100 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2048, %2078 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2099 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2101 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2102 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2100, %2098 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2101 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2103 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2104 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%2103 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2105 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2106 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2102, %2104 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2105 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2107 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2108 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2042, %2106 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2107 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2109 = tensor.collapse_shape %2108 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %2110 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_219 = arith.constant 0.000000e+00 : f32
  %2111 = linalg.fill ins(%cst_219 : f32) outs(%2110 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2112 = linalg.matmul ins(%2109, %158 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%2111 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2113 = tensor.expand_shape %2112 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2114 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2115 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%157 : tensor<384xf32>) outs(%2114 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2116 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2117 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2113, %2115 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2116 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2118 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2119 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2117, %2029 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2118 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_220 = arith.constant -0.000000e+00 : f32
  %2120 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2121 = linalg.fill ins(%cst_220 : f32) outs(%2120 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2122 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2119 : tensor<1x512x384xf32>) outs(%2121 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2123 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2124 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2123 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2125 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2126 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2122, %2124 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2125 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2127 = tensor.expand_shape %2126 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2128 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2129 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2127 : tensor<1x512x1xf32>) outs(%2128 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2130 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2131 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2119, %2129 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2130 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2132 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2133 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2131, %2131 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2132 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_221 = arith.constant -0.000000e+00 : f32
  %2134 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2135 = linalg.fill ins(%cst_221 : f32) outs(%2134 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2136 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2133 : tensor<1x512x384xf32>) outs(%2135 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2137 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2138 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2137 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2139 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2140 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2136, %2138 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2139 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2141 = tensor.expand_shape %2140 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2142 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2143 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2142 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2144 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2145 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2141, %2143 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2144 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2146 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2147 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2145 : tensor<1x512x1xf32>) outs(%2146 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2148 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2149 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2147 : tensor<1x512x1xf32>) outs(%2148 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2150 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2151 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%159 : tensor<384xf32>) outs(%2150 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2152 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2153 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2149, %2151 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2152 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2154 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2155 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2119, %2153 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2154 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2156 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2157 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2127 : tensor<1x512x1xf32>) outs(%2156 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2158 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2159 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2157, %2153 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2158 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2160 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2161 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%160 : tensor<384xf32>) outs(%2160 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2162 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2163 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2161, %2159 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2162 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2164 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2165 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2155, %2163 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2164 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2166 = tensor.collapse_shape %2165 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2167 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_222 = arith.constant 0.000000e+00 : f32
  %2168 = linalg.fill ins(%cst_222 : f32) outs(%2167 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2169 = linalg.matmul ins(%2166, %166 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2168 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2170 = tensor.expand_shape %2169 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2171 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2172 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%165 : tensor<384xf32>) outs(%2171 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2173 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2174 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2170, %2172 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2173 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2175 = tensor.expand_shape %2174 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2176 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_223 = arith.constant 0.000000e+00 : f32
  %2177 = linalg.fill ins(%cst_223 : f32) outs(%2176 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2178 = linalg.matmul ins(%2166, %168 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2177 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2179 = tensor.expand_shape %2178 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2180 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2181 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%167 : tensor<384xf32>) outs(%2180 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2182 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2183 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2179, %2181 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2182 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2184 = tensor.expand_shape %2183 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2185 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2186 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2184 : tensor<1x512x12x32xf32>) outs(%2185 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %2187 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %2188 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2175 : tensor<1x512x12x32xf32>) outs(%2187 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %2189 = tensor.collapse_shape %2186 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %2190 = tensor.collapse_shape %2188 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %2191 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_224 = arith.constant 0.000000e+00 : f32
  %2192 = linalg.fill ins(%cst_224 : f32) outs(%2191 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %2193 = linalg.batch_matmul ins(%2189, %2190 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%2192 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %2194 = tensor.expand_shape %2193 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %2195 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2196 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%2195 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2197 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2198 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2194, %2196 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2197 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2199 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2200 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%2199 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2201 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2202 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2198, %2200 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2201 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2203 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2204 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%2203 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2205 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2206 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2202, %2204 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2205 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_225 = arith.constant 0xFF800000 : f32
  %2207 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %2208 = linalg.fill ins(%cst_225 : f32) outs(%2207 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %2209 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%2206 : tensor<1x12x512x512xf32>) outs(%2208 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %2210 = tensor.expand_shape %2209 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %2211 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2212 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2210 : tensor<1x12x512x1xf32>) outs(%2211 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2213 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2214 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2206, %2212 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2213 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2215 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2216 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2214 : tensor<1x12x512x512xf32>) outs(%2215 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_226 = arith.constant -0.000000e+00 : f32
  %2217 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %2218 = linalg.fill ins(%cst_226 : f32) outs(%2217 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %2219 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%2216 : tensor<1x12x512x512xf32>) outs(%2218 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %2220 = tensor.expand_shape %2219 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %2221 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2222 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2220 : tensor<1x12x512x1xf32>) outs(%2221 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2223 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2224 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2216, %2222 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2223 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2225 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_227 = arith.constant 0.000000e+00 : f32
  %2226 = linalg.fill ins(%cst_227 : f32) outs(%2225 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2227 = linalg.matmul ins(%2166, %170 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2226 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2228 = tensor.expand_shape %2227 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2229 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2230 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%169 : tensor<384xf32>) outs(%2229 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2231 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2232 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2228, %2230 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2231 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2233 = tensor.expand_shape %2232 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2234 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2235 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2233 : tensor<1x512x12x32xf32>) outs(%2234 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %2236 = tensor.collapse_shape %2224 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %2237 = tensor.collapse_shape %2235 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %2238 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_228 = arith.constant 0.000000e+00 : f32
  %2239 = linalg.fill ins(%cst_228 : f32) outs(%2238 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %2240 = linalg.batch_matmul ins(%2236, %2237 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%2239 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %2241 = tensor.expand_shape %2240 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %2242 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %2243 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2241 : tensor<1x12x512x32xf32>) outs(%2242 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %2244 = tensor.collapse_shape %2243 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %2245 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_229 = arith.constant 0.000000e+00 : f32
  %2246 = linalg.fill ins(%cst_229 : f32) outs(%2245 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2247 = linalg.matmul ins(%2244, %162 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2246 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2248 = tensor.expand_shape %2247 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2249 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2250 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%161 : tensor<384xf32>) outs(%2249 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2251 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2252 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2248, %2250 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2251 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2253 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2254 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2252, %2165 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2253 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_230 = arith.constant -0.000000e+00 : f32
  %2255 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2256 = linalg.fill ins(%cst_230 : f32) outs(%2255 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2257 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2254 : tensor<1x512x384xf32>) outs(%2256 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2258 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2259 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2258 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2260 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2261 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2257, %2259 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2260 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2262 = tensor.expand_shape %2261 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2263 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2264 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2262 : tensor<1x512x1xf32>) outs(%2263 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2265 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2266 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2254, %2264 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2265 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2267 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2268 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2266, %2266 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2267 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_231 = arith.constant -0.000000e+00 : f32
  %2269 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2270 = linalg.fill ins(%cst_231 : f32) outs(%2269 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2271 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2268 : tensor<1x512x384xf32>) outs(%2270 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2272 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2273 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2272 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2274 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2275 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2271, %2273 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2274 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2276 = tensor.expand_shape %2275 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2277 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2278 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2277 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2279 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2276, %2278 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2279 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2281 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2280 : tensor<1x512x1xf32>) outs(%2281 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2283 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2284 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2282 : tensor<1x512x1xf32>) outs(%2283 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2285 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%163 : tensor<384xf32>) outs(%2285 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2287 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2284, %2286 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2287 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2289 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2254, %2288 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2289 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2291 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2292 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2262 : tensor<1x512x1xf32>) outs(%2291 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2293 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2294 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2292, %2288 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2293 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2295 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2296 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%164 : tensor<384xf32>) outs(%2295 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2297 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2298 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2296, %2294 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2297 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2299 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2300 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2290, %2298 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2299 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2301 = tensor.collapse_shape %2300 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2302 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_232 = arith.constant 0.000000e+00 : f32
  %2303 = linalg.fill ins(%cst_232 : f32) outs(%2302 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2304 = linalg.matmul ins(%2301, %172 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%2303 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2305 = tensor.expand_shape %2304 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %2306 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2307 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%171 : tensor<1536xf32>) outs(%2306 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2308 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2309 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2305, %2307 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2308 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2310 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2311 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%2310 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2312 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2313 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2309, %2311 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2312 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2314 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2315 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%2314 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2316 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2317 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2309, %2315 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2316 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_233 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_234 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %2318 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2319 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_233, %2317, %cst_234 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2318 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %2320 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2321 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2319, %2319 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2320 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_235 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2322 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2323 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_235, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2322 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_236 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %2324 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2325 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2323, %cst_236 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2324 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2326 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2327 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2325, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2326 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_237 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %2328 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2329 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2327, %cst_237 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2328 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2330 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2331 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2329, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2330 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_238 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %2332 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2333 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2331, %cst_238 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2332 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2334 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2335 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2333, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2334 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_239 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %2336 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2337 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2335, %cst_239 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2336 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2338 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2339 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2337, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2338 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_240 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %2340 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2341 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2339, %cst_240 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2340 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2342 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2343 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2341, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2342 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_241 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %2344 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2345 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2343, %cst_241 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2344 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2346 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2347 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2345, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2346 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_242 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %2348 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2349 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2347, %cst_242 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2348 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_243 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2350 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2351 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_243, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2350 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_244 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %2352 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2353 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2351, %cst_244 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2352 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2354 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2355 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2353, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2354 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_245 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %2356 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2357 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2355, %cst_245 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2356 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2358 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2359 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2357, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2358 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_246 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %2360 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2361 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2359, %cst_246 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2360 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2362 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2363 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2361, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2362 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_247 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %2364 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2365 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2363, %cst_247 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2364 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2366 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2367 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2365, %2321 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2366 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_248 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %2368 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2369 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2367, %cst_248 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2368 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2370 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2371 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2319, %2349 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2370 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2372 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2373 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2371, %2369 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2372 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2374 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2375 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%2374 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2376 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2377 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2373, %2375 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2376 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2378 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2379 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2313, %2377 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2378 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2380 = tensor.collapse_shape %2379 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %2381 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_249 = arith.constant 0.000000e+00 : f32
  %2382 = linalg.fill ins(%cst_249 : f32) outs(%2381 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2383 = linalg.matmul ins(%2380, %174 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%2382 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2384 = tensor.expand_shape %2383 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2385 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2386 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%173 : tensor<384xf32>) outs(%2385 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2387 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2388 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2384, %2386 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2387 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2389 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2390 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2388, %2300 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2389 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_250 = arith.constant -0.000000e+00 : f32
  %2391 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2392 = linalg.fill ins(%cst_250 : f32) outs(%2391 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2393 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2390 : tensor<1x512x384xf32>) outs(%2392 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2394 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2395 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2394 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2396 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2397 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2393, %2395 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2396 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2398 = tensor.expand_shape %2397 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2399 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2400 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2398 : tensor<1x512x1xf32>) outs(%2399 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2401 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2402 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2390, %2400 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2401 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2403 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2404 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2402, %2402 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2403 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_251 = arith.constant -0.000000e+00 : f32
  %2405 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2406 = linalg.fill ins(%cst_251 : f32) outs(%2405 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2407 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2404 : tensor<1x512x384xf32>) outs(%2406 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2408 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2409 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2408 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2410 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2411 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2407, %2409 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2410 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2412 = tensor.expand_shape %2411 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2413 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2414 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2413 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2415 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2416 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2412, %2414 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2415 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2417 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2418 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2416 : tensor<1x512x1xf32>) outs(%2417 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2419 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2420 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2418 : tensor<1x512x1xf32>) outs(%2419 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2421 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2422 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%175 : tensor<384xf32>) outs(%2421 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2423 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2424 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2420, %2422 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2423 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2425 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2426 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2390, %2424 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2425 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2427 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2428 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2398 : tensor<1x512x1xf32>) outs(%2427 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2429 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2430 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2428, %2424 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2429 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2431 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2432 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%176 : tensor<384xf32>) outs(%2431 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2433 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2434 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2432, %2430 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2433 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2435 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2436 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2426, %2434 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2435 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2437 = tensor.collapse_shape %2436 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2438 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_252 = arith.constant 0.000000e+00 : f32
  %2439 = linalg.fill ins(%cst_252 : f32) outs(%2438 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2440 = linalg.matmul ins(%2437, %182 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2439 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2441 = tensor.expand_shape %2440 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2442 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2443 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%181 : tensor<384xf32>) outs(%2442 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2444 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2445 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2441, %2443 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2444 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2446 = tensor.expand_shape %2445 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2447 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_253 = arith.constant 0.000000e+00 : f32
  %2448 = linalg.fill ins(%cst_253 : f32) outs(%2447 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2449 = linalg.matmul ins(%2437, %184 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2448 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2450 = tensor.expand_shape %2449 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2451 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2452 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%183 : tensor<384xf32>) outs(%2451 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2453 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2454 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2450, %2452 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2453 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2455 = tensor.expand_shape %2454 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2456 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2457 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2455 : tensor<1x512x12x32xf32>) outs(%2456 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %2458 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %2459 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2446 : tensor<1x512x12x32xf32>) outs(%2458 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %2460 = tensor.collapse_shape %2457 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %2461 = tensor.collapse_shape %2459 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %2462 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_254 = arith.constant 0.000000e+00 : f32
  %2463 = linalg.fill ins(%cst_254 : f32) outs(%2462 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %2464 = linalg.batch_matmul ins(%2460, %2461 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%2463 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %2465 = tensor.expand_shape %2464 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %2466 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2467 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%2466 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2468 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2469 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2465, %2467 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2468 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2470 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2471 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%2470 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2472 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2473 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2469, %2471 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2472 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2474 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2475 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%2474 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2476 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2477 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2473, %2475 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2476 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_255 = arith.constant 0xFF800000 : f32
  %2478 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %2479 = linalg.fill ins(%cst_255 : f32) outs(%2478 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %2480 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%2477 : tensor<1x12x512x512xf32>) outs(%2479 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %2481 = tensor.expand_shape %2480 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %2482 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2483 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2481 : tensor<1x12x512x1xf32>) outs(%2482 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2484 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2485 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2477, %2483 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2484 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2486 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2487 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2485 : tensor<1x12x512x512xf32>) outs(%2486 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_256 = arith.constant -0.000000e+00 : f32
  %2488 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %2489 = linalg.fill ins(%cst_256 : f32) outs(%2488 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %2490 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%2487 : tensor<1x12x512x512xf32>) outs(%2489 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %2491 = tensor.expand_shape %2490 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %2492 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2493 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2491 : tensor<1x12x512x1xf32>) outs(%2492 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2494 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2495 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2487, %2493 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2494 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2496 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_257 = arith.constant 0.000000e+00 : f32
  %2497 = linalg.fill ins(%cst_257 : f32) outs(%2496 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2498 = linalg.matmul ins(%2437, %186 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2497 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2499 = tensor.expand_shape %2498 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2500 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2501 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%185 : tensor<384xf32>) outs(%2500 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2502 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2503 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2499, %2501 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2502 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2504 = tensor.expand_shape %2503 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2505 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2506 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2504 : tensor<1x512x12x32xf32>) outs(%2505 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %2507 = tensor.collapse_shape %2495 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %2508 = tensor.collapse_shape %2506 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %2509 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_258 = arith.constant 0.000000e+00 : f32
  %2510 = linalg.fill ins(%cst_258 : f32) outs(%2509 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %2511 = linalg.batch_matmul ins(%2507, %2508 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%2510 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %2512 = tensor.expand_shape %2511 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %2513 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %2514 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2512 : tensor<1x12x512x32xf32>) outs(%2513 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %2515 = tensor.collapse_shape %2514 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %2516 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_259 = arith.constant 0.000000e+00 : f32
  %2517 = linalg.fill ins(%cst_259 : f32) outs(%2516 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2518 = linalg.matmul ins(%2515, %178 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2517 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2519 = tensor.expand_shape %2518 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2520 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2521 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%177 : tensor<384xf32>) outs(%2520 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2522 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2523 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2519, %2521 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2522 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2524 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2525 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2523, %2436 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2524 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_260 = arith.constant -0.000000e+00 : f32
  %2526 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2527 = linalg.fill ins(%cst_260 : f32) outs(%2526 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2528 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2525 : tensor<1x512x384xf32>) outs(%2527 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2529 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2530 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2529 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2531 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2532 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2528, %2530 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2531 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2533 = tensor.expand_shape %2532 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2534 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2535 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2533 : tensor<1x512x1xf32>) outs(%2534 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2536 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2537 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2525, %2535 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2536 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2538 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2539 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2537, %2537 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2538 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_261 = arith.constant -0.000000e+00 : f32
  %2540 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2541 = linalg.fill ins(%cst_261 : f32) outs(%2540 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2542 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2539 : tensor<1x512x384xf32>) outs(%2541 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2543 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2544 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2543 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2545 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2546 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2542, %2544 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2545 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2547 = tensor.expand_shape %2546 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2548 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2549 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2548 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2550 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2551 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2547, %2549 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2550 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2552 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2553 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2551 : tensor<1x512x1xf32>) outs(%2552 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2554 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2555 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2553 : tensor<1x512x1xf32>) outs(%2554 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2556 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2557 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%179 : tensor<384xf32>) outs(%2556 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2558 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2559 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2555, %2557 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2558 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2560 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2561 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2525, %2559 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2560 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2562 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2563 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2533 : tensor<1x512x1xf32>) outs(%2562 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2564 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2565 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2563, %2559 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2564 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2566 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2567 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%180 : tensor<384xf32>) outs(%2566 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2568 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2569 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2567, %2565 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2568 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2570 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2571 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2561, %2569 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2570 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2572 = tensor.collapse_shape %2571 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2573 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_262 = arith.constant 0.000000e+00 : f32
  %2574 = linalg.fill ins(%cst_262 : f32) outs(%2573 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2575 = linalg.matmul ins(%2572, %188 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%2574 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2576 = tensor.expand_shape %2575 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %2577 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2578 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%187 : tensor<1536xf32>) outs(%2577 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2579 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2580 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2576, %2578 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2579 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2581 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2582 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%2581 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2583 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2584 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2580, %2582 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2583 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2585 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2586 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%2585 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2587 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2588 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2580, %2586 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2587 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_263 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_264 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %2589 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2590 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_263, %2588, %cst_264 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2589 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %2591 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2592 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2590, %2590 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2591 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_265 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2593 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2594 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_265, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2593 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_266 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %2595 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2596 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2594, %cst_266 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2595 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2597 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2598 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2596, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2597 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_267 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %2599 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2600 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2598, %cst_267 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2599 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2601 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2602 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2600, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2601 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_268 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %2603 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2604 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2602, %cst_268 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2603 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2605 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2606 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2604, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2605 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_269 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %2607 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2608 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2606, %cst_269 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2607 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2609 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2610 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2608, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2609 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_270 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %2611 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2612 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2610, %cst_270 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2611 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2613 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2614 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2612, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2613 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_271 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %2615 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2616 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2614, %cst_271 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2615 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2617 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2618 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2616, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2617 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_272 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %2619 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2620 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2618, %cst_272 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2619 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_273 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2621 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2622 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_273, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2621 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_274 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %2623 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2624 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2622, %cst_274 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2623 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2625 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2626 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2624, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2625 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_275 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %2627 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2628 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2626, %cst_275 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2627 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2629 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2630 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2628, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2629 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_276 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %2631 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2632 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2630, %cst_276 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2631 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2633 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2634 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2632, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2633 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_277 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %2635 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2636 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2634, %cst_277 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2635 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2637 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2638 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2636, %2592 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2637 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_278 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %2639 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2640 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2638, %cst_278 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2639 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2641 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2642 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2590, %2620 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2641 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2643 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2644 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2642, %2640 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2643 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2645 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2646 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%2645 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2647 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2648 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2644, %2646 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2647 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2649 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2650 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2584, %2648 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2649 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2651 = tensor.collapse_shape %2650 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %2652 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_279 = arith.constant 0.000000e+00 : f32
  %2653 = linalg.fill ins(%cst_279 : f32) outs(%2652 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2654 = linalg.matmul ins(%2651, %190 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%2653 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2655 = tensor.expand_shape %2654 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2656 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2657 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%189 : tensor<384xf32>) outs(%2656 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2658 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2659 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2655, %2657 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2658 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2660 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2661 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2659, %2571 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2660 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_280 = arith.constant -0.000000e+00 : f32
  %2662 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2663 = linalg.fill ins(%cst_280 : f32) outs(%2662 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2664 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2661 : tensor<1x512x384xf32>) outs(%2663 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2665 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2666 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2665 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2667 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2668 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2664, %2666 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2667 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2669 = tensor.expand_shape %2668 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2670 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2671 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2669 : tensor<1x512x1xf32>) outs(%2670 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2672 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2673 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2661, %2671 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2672 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2674 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2675 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2673, %2673 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2674 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_281 = arith.constant -0.000000e+00 : f32
  %2676 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2677 = linalg.fill ins(%cst_281 : f32) outs(%2676 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2678 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2675 : tensor<1x512x384xf32>) outs(%2677 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2679 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2680 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2679 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2681 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2682 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2678, %2680 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2681 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2683 = tensor.expand_shape %2682 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2684 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2685 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2684 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2686 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2687 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2683, %2685 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2686 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2688 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2689 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2687 : tensor<1x512x1xf32>) outs(%2688 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2690 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2691 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2689 : tensor<1x512x1xf32>) outs(%2690 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2692 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2693 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%191 : tensor<384xf32>) outs(%2692 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2694 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2695 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2691, %2693 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2694 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2696 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2697 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2661, %2695 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2696 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2698 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2699 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2669 : tensor<1x512x1xf32>) outs(%2698 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2700 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2701 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2699, %2695 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2700 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2702 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2703 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%192 : tensor<384xf32>) outs(%2702 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2704 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2705 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2703, %2701 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2704 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2706 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2707 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2697, %2705 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2706 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2708 = tensor.collapse_shape %2707 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2709 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_282 = arith.constant 0.000000e+00 : f32
  %2710 = linalg.fill ins(%cst_282 : f32) outs(%2709 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2711 = linalg.matmul ins(%2708, %198 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2710 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2712 = tensor.expand_shape %2711 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2713 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2714 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%197 : tensor<384xf32>) outs(%2713 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2715 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2716 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2712, %2714 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2715 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2717 = tensor.expand_shape %2716 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2718 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_283 = arith.constant 0.000000e+00 : f32
  %2719 = linalg.fill ins(%cst_283 : f32) outs(%2718 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2720 = linalg.matmul ins(%2708, %200 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2719 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2721 = tensor.expand_shape %2720 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2722 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2723 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%199 : tensor<384xf32>) outs(%2722 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2724 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2725 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2721, %2723 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2724 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2726 = tensor.expand_shape %2725 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2727 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2728 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2726 : tensor<1x512x12x32xf32>) outs(%2727 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %2729 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %2730 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2717 : tensor<1x512x12x32xf32>) outs(%2729 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %2731 = tensor.collapse_shape %2728 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %2732 = tensor.collapse_shape %2730 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %2733 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_284 = arith.constant 0.000000e+00 : f32
  %2734 = linalg.fill ins(%cst_284 : f32) outs(%2733 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %2735 = linalg.batch_matmul ins(%2731, %2732 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%2734 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %2736 = tensor.expand_shape %2735 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %2737 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2738 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%2737 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2739 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2740 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2736, %2738 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2739 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2741 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2742 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%2741 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2743 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2744 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2740, %2742 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2743 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2745 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2746 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%2745 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2747 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2748 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2744, %2746 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2747 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_285 = arith.constant 0xFF800000 : f32
  %2749 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %2750 = linalg.fill ins(%cst_285 : f32) outs(%2749 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %2751 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%2748 : tensor<1x12x512x512xf32>) outs(%2750 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %2752 = tensor.expand_shape %2751 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %2753 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2754 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2752 : tensor<1x12x512x1xf32>) outs(%2753 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2755 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2756 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2748, %2754 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2755 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2757 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2758 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2756 : tensor<1x12x512x512xf32>) outs(%2757 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_286 = arith.constant -0.000000e+00 : f32
  %2759 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %2760 = linalg.fill ins(%cst_286 : f32) outs(%2759 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %2761 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%2758 : tensor<1x12x512x512xf32>) outs(%2760 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %2762 = tensor.expand_shape %2761 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %2763 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2764 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2762 : tensor<1x12x512x1xf32>) outs(%2763 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %2765 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %2766 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2758, %2764 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%2765 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %2767 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_287 = arith.constant 0.000000e+00 : f32
  %2768 = linalg.fill ins(%cst_287 : f32) outs(%2767 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2769 = linalg.matmul ins(%2708, %202 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2768 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2770 = tensor.expand_shape %2769 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2771 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2772 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%201 : tensor<384xf32>) outs(%2771 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2773 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2774 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2770, %2772 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2773 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2775 = tensor.expand_shape %2774 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2776 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2777 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2775 : tensor<1x512x12x32xf32>) outs(%2776 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %2778 = tensor.collapse_shape %2766 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %2779 = tensor.collapse_shape %2777 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %2780 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_288 = arith.constant 0.000000e+00 : f32
  %2781 = linalg.fill ins(%cst_288 : f32) outs(%2780 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %2782 = linalg.batch_matmul ins(%2778, %2779 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%2781 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %2783 = tensor.expand_shape %2782 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %2784 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %2785 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2783 : tensor<1x12x512x32xf32>) outs(%2784 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %2786 = tensor.collapse_shape %2785 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %2787 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_289 = arith.constant 0.000000e+00 : f32
  %2788 = linalg.fill ins(%cst_289 : f32) outs(%2787 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2789 = linalg.matmul ins(%2786, %194 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2788 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2790 = tensor.expand_shape %2789 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2791 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2792 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%193 : tensor<384xf32>) outs(%2791 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2793 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2794 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2790, %2792 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2793 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2795 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2796 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2794, %2707 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2795 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_290 = arith.constant -0.000000e+00 : f32
  %2797 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2798 = linalg.fill ins(%cst_290 : f32) outs(%2797 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2799 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2796 : tensor<1x512x384xf32>) outs(%2798 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2800 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2801 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2800 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2802 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2803 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2799, %2801 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2802 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2804 = tensor.expand_shape %2803 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2805 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2806 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2804 : tensor<1x512x1xf32>) outs(%2805 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2807 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2808 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2796, %2806 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2807 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2809 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2810 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2808, %2808 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2809 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_291 = arith.constant -0.000000e+00 : f32
  %2811 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2812 = linalg.fill ins(%cst_291 : f32) outs(%2811 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2813 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2810 : tensor<1x512x384xf32>) outs(%2812 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2814 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2815 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2814 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2816 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2817 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2813, %2815 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2816 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2818 = tensor.expand_shape %2817 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2819 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2820 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2819 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2821 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2822 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2818, %2820 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2821 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2823 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2824 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2822 : tensor<1x512x1xf32>) outs(%2823 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2825 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2826 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2824 : tensor<1x512x1xf32>) outs(%2825 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2827 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2828 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%195 : tensor<384xf32>) outs(%2827 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2829 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2830 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2826, %2828 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2829 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2831 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2832 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2796, %2830 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2831 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2833 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2834 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2804 : tensor<1x512x1xf32>) outs(%2833 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2835 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2836 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2834, %2830 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2835 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2837 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2838 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%196 : tensor<384xf32>) outs(%2837 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2839 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2840 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2838, %2836 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2839 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2841 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2842 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2832, %2840 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2841 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2843 = tensor.collapse_shape %2842 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2844 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_292 = arith.constant 0.000000e+00 : f32
  %2845 = linalg.fill ins(%cst_292 : f32) outs(%2844 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2846 = linalg.matmul ins(%2843, %204 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%2845 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %2847 = tensor.expand_shape %2846 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %2848 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2849 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%203 : tensor<1536xf32>) outs(%2848 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2850 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2851 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2847, %2849 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2850 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2852 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2853 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%2852 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2854 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2855 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2851, %2853 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2854 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2856 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2857 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%2856 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2858 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2859 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2851, %2857 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2858 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_293 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_294 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %2860 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2861 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_293, %2859, %cst_294 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2860 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %2862 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2863 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2861, %2861 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2862 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_295 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2864 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2865 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_295, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2864 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_296 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %2866 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2867 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2865, %cst_296 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2866 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2868 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2869 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2867, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2868 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_297 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %2870 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2871 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2869, %cst_297 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2870 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2872 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2873 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2871, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2872 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_298 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %2874 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2875 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2873, %cst_298 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2874 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2876 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2877 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2875, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2876 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_299 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %2878 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2879 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2877, %cst_299 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2878 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2880 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2881 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2879, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2880 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_300 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %2882 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2883 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2881, %cst_300 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2882 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2884 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2885 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2883, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2884 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_301 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %2886 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2887 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2885, %cst_301 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2886 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2888 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2889 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2887, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2888 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_302 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %2890 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2891 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2889, %cst_302 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2890 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_303 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %2892 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2893 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_303, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2892 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_304 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %2894 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2895 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2893, %cst_304 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2894 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2896 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2897 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2895, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2896 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_305 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %2898 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2899 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2897, %cst_305 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2898 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2900 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2901 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2899, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2900 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_306 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %2902 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2903 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2901, %cst_306 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2902 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2904 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2905 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2903, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2904 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_307 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %2906 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2907 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2905, %cst_307 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2906 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2908 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2909 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2907, %2863 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2908 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_308 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %2910 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2911 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2909, %cst_308 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2910 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2912 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2913 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2861, %2891 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2912 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2914 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2915 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2913, %2911 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2914 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2916 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2917 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%2916 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %2918 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2919 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2915, %2917 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2918 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2920 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %2921 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2855, %2919 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%2920 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %2922 = tensor.collapse_shape %2921 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %2923 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_309 = arith.constant 0.000000e+00 : f32
  %2924 = linalg.fill ins(%cst_309 : f32) outs(%2923 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2925 = linalg.matmul ins(%2922, %206 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%2924 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2926 = tensor.expand_shape %2925 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2927 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2928 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%205 : tensor<384xf32>) outs(%2927 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2929 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2930 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2926, %2928 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2929 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2931 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2932 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2930, %2842 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2931 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_310 = arith.constant -0.000000e+00 : f32
  %2933 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2934 = linalg.fill ins(%cst_310 : f32) outs(%2933 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2935 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2932 : tensor<1x512x384xf32>) outs(%2934 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2936 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2937 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2936 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2938 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2939 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2935, %2937 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2938 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2940 = tensor.expand_shape %2939 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2941 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2942 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2940 : tensor<1x512x1xf32>) outs(%2941 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2943 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2944 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2932, %2942 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2943 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2945 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2946 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2944, %2944 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2945 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_311 = arith.constant -0.000000e+00 : f32
  %2947 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2948 = linalg.fill ins(%cst_311 : f32) outs(%2947 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %2949 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%2946 : tensor<1x512x384xf32>) outs(%2948 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %2950 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2951 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%2950 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %2952 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %2953 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%2949, %2951 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%2952 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %2954 = tensor.expand_shape %2953 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %2955 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2956 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%2955 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %2957 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2958 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2954, %2956 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%2957 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2959 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %2960 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2958 : tensor<1x512x1xf32>) outs(%2959 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %2961 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2962 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2960 : tensor<1x512x1xf32>) outs(%2961 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2963 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2964 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%207 : tensor<384xf32>) outs(%2963 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2965 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2966 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2962, %2964 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2965 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2967 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2968 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2932, %2966 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2967 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2969 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2970 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2940 : tensor<1x512x1xf32>) outs(%2969 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2971 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2972 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2970, %2966 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2971 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2973 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2974 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%208 : tensor<384xf32>) outs(%2973 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2975 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2976 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2974, %2972 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2975 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2977 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2978 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2968, %2976 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2977 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2979 = tensor.collapse_shape %2978 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %2980 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_312 = arith.constant 0.000000e+00 : f32
  %2981 = linalg.fill ins(%cst_312 : f32) outs(%2980 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2982 = linalg.matmul ins(%2979, %38 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2981 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2983 = tensor.expand_shape %2982 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2984 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2985 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%37 : tensor<384xf32>) outs(%2984 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2986 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2987 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2983, %2985 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2986 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2988 = tensor.expand_shape %2987 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2989 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_313 = arith.constant 0.000000e+00 : f32
  %2990 = linalg.fill ins(%cst_313 : f32) outs(%2989 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2991 = linalg.matmul ins(%2979, %40 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%2990 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %2992 = tensor.expand_shape %2991 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %2993 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2994 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%39 : tensor<384xf32>) outs(%2993 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %2995 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %2996 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2992, %2994 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%2995 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %2997 = tensor.expand_shape %2996 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %2998 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %2999 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2997 : tensor<1x512x12x32xf32>) outs(%2998 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %3000 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %3001 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2988 : tensor<1x512x12x32xf32>) outs(%3000 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %3002 = tensor.collapse_shape %2999 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %3003 = tensor.collapse_shape %3001 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %3004 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_314 = arith.constant 0.000000e+00 : f32
  %3005 = linalg.fill ins(%cst_314 : f32) outs(%3004 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %3006 = linalg.batch_matmul ins(%3002, %3003 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%3005 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %3007 = tensor.expand_shape %3006 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %3008 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3009 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%3008 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3010 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3011 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3007, %3009 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3010 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3012 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3013 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%3012 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3014 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3015 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3011, %3013 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3014 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3016 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3017 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%3016 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3018 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3019 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3015, %3017 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3018 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_315 = arith.constant 0xFF800000 : f32
  %3020 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %3021 = linalg.fill ins(%cst_315 : f32) outs(%3020 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %3022 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%3019 : tensor<1x12x512x512xf32>) outs(%3021 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %3023 = tensor.expand_shape %3022 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %3024 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3025 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3023 : tensor<1x12x512x1xf32>) outs(%3024 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3026 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3027 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3019, %3025 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3026 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3028 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3029 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3027 : tensor<1x12x512x512xf32>) outs(%3028 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_316 = arith.constant -0.000000e+00 : f32
  %3030 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %3031 = linalg.fill ins(%cst_316 : f32) outs(%3030 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %3032 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%3029 : tensor<1x12x512x512xf32>) outs(%3031 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %3033 = tensor.expand_shape %3032 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %3034 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3035 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3033 : tensor<1x12x512x1xf32>) outs(%3034 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3036 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3037 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3029, %3035 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3036 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3038 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_317 = arith.constant 0.000000e+00 : f32
  %3039 = linalg.fill ins(%cst_317 : f32) outs(%3038 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3040 = linalg.matmul ins(%2979, %42 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%3039 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3041 = tensor.expand_shape %3040 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3042 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3043 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%41 : tensor<384xf32>) outs(%3042 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3044 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3045 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3041, %3043 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3044 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3046 = tensor.expand_shape %3045 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %3047 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %3048 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3046 : tensor<1x512x12x32xf32>) outs(%3047 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %3049 = tensor.collapse_shape %3037 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %3050 = tensor.collapse_shape %3048 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %3051 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_318 = arith.constant 0.000000e+00 : f32
  %3052 = linalg.fill ins(%cst_318 : f32) outs(%3051 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %3053 = linalg.batch_matmul ins(%3049, %3050 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%3052 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %3054 = tensor.expand_shape %3053 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %3055 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %3056 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3054 : tensor<1x12x512x32xf32>) outs(%3055 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %3057 = tensor.collapse_shape %3056 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %3058 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_319 = arith.constant 0.000000e+00 : f32
  %3059 = linalg.fill ins(%cst_319 : f32) outs(%3058 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3060 = linalg.matmul ins(%3057, %34 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%3059 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3061 = tensor.expand_shape %3060 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3062 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3063 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%33 : tensor<384xf32>) outs(%3062 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3064 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3065 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3061, %3063 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3064 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3066 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3067 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3065, %2978 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3066 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_320 = arith.constant -0.000000e+00 : f32
  %3068 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3069 = linalg.fill ins(%cst_320 : f32) outs(%3068 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3070 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3067 : tensor<1x512x384xf32>) outs(%3069 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3071 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3072 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3071 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3073 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3074 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3070, %3072 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3073 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3075 = tensor.expand_shape %3074 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3076 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3077 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3075 : tensor<1x512x1xf32>) outs(%3076 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3078 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3079 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3067, %3077 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3078 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3080 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3081 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3079, %3079 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3080 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_321 = arith.constant -0.000000e+00 : f32
  %3082 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3083 = linalg.fill ins(%cst_321 : f32) outs(%3082 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3084 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3081 : tensor<1x512x384xf32>) outs(%3083 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3085 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3086 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3085 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3087 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3088 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3084, %3086 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3087 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3089 = tensor.expand_shape %3088 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3090 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3091 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%3090 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %3092 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3093 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3089, %3091 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%3092 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3094 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3095 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3093 : tensor<1x512x1xf32>) outs(%3094 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3096 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3097 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3095 : tensor<1x512x1xf32>) outs(%3096 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3098 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3099 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%35 : tensor<384xf32>) outs(%3098 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3100 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3101 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3097, %3099 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3100 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3102 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3103 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3067, %3101 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3102 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3104 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3105 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3075 : tensor<1x512x1xf32>) outs(%3104 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3106 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3107 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3105, %3101 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3106 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3108 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3109 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%36 : tensor<384xf32>) outs(%3108 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3110 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3111 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3109, %3107 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3110 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3112 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3113 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3103, %3111 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3112 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3114 = tensor.collapse_shape %3113 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %3115 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_322 = arith.constant 0.000000e+00 : f32
  %3116 = linalg.fill ins(%cst_322 : f32) outs(%3115 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %3117 = linalg.matmul ins(%3114, %44 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%3116 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %3118 = tensor.expand_shape %3117 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %3119 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3120 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%43 : tensor<1536xf32>) outs(%3119 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3121 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3122 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3118, %3120 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3121 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3123 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3124 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%3123 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3125 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3126 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3122, %3124 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3125 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3127 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3128 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%3127 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3129 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3130 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3122, %3128 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3129 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_323 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_324 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %3131 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3132 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_323, %3130, %cst_324 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3131 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %3133 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3134 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3132, %3132 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3133 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_325 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %3135 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3136 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_325, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3135 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_326 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %3137 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3138 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3136, %cst_326 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3137 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3139 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3140 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3138, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3139 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_327 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %3141 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3142 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3140, %cst_327 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3141 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3143 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3144 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3142, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3143 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_328 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %3145 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3146 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3144, %cst_328 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3145 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3147 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3148 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3146, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3147 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_329 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %3149 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3150 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3148, %cst_329 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3149 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3151 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3152 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3150, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3151 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_330 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %3153 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3154 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3152, %cst_330 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3153 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3155 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3156 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3154, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3155 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_331 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %3157 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3158 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3156, %cst_331 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3157 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3159 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3160 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3158, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3159 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_332 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %3161 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3162 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3160, %cst_332 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3161 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_333 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %3163 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3164 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_333, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3163 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_334 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %3165 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3166 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3164, %cst_334 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3165 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3167 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3168 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3166, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3167 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_335 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %3169 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3170 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3168, %cst_335 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3169 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3171 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3172 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3170, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3171 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_336 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %3173 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3174 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3172, %cst_336 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3173 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3175 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3176 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3174, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3175 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_337 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %3177 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3178 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3176, %cst_337 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3177 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3179 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3180 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3178, %3134 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3179 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_338 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %3181 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3182 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3180, %cst_338 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3181 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3183 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3184 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3132, %3162 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3183 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3185 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3186 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3184, %3182 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3185 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3187 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3188 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%3187 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3189 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3190 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3186, %3188 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3189 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3191 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3192 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3126, %3190 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3191 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3193 = tensor.collapse_shape %3192 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %3194 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_339 = arith.constant 0.000000e+00 : f32
  %3195 = linalg.fill ins(%cst_339 : f32) outs(%3194 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3196 = linalg.matmul ins(%3193, %46 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%3195 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3197 = tensor.expand_shape %3196 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3198 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3199 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%45 : tensor<384xf32>) outs(%3198 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3200 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3201 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3197, %3199 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3200 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3202 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3203 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3201, %3113 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3202 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_340 = arith.constant -0.000000e+00 : f32
  %3204 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3205 = linalg.fill ins(%cst_340 : f32) outs(%3204 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3206 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3203 : tensor<1x512x384xf32>) outs(%3205 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3207 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3208 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3207 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3209 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3210 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3206, %3208 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3209 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3211 = tensor.expand_shape %3210 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3212 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3213 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3211 : tensor<1x512x1xf32>) outs(%3212 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3214 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3215 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3203, %3213 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3214 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3216 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3217 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3215, %3215 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3216 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_341 = arith.constant -0.000000e+00 : f32
  %3218 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3219 = linalg.fill ins(%cst_341 : f32) outs(%3218 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3220 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3217 : tensor<1x512x384xf32>) outs(%3219 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3221 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3222 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3221 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3223 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3224 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3220, %3222 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3223 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3225 = tensor.expand_shape %3224 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3226 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3227 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%3226 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %3228 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3229 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3225, %3227 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%3228 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3230 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3231 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3229 : tensor<1x512x1xf32>) outs(%3230 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3232 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3233 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3231 : tensor<1x512x1xf32>) outs(%3232 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3234 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3235 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%47 : tensor<384xf32>) outs(%3234 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3236 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3237 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3233, %3235 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3236 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3238 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3239 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3203, %3237 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3238 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3240 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3241 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3211 : tensor<1x512x1xf32>) outs(%3240 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3242 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3243 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3241, %3237 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3242 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3244 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3245 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%48 : tensor<384xf32>) outs(%3244 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3246 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3247 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3245, %3243 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3246 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3248 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3249 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3239, %3247 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3248 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3250 = tensor.collapse_shape %3249 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %3251 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_342 = arith.constant 0.000000e+00 : f32
  %3252 = linalg.fill ins(%cst_342 : f32) outs(%3251 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3253 = linalg.matmul ins(%3250, %54 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%3252 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3254 = tensor.expand_shape %3253 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3255 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3256 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%53 : tensor<384xf32>) outs(%3255 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3257 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3258 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3254, %3256 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3257 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3259 = tensor.expand_shape %3258 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %3260 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_343 = arith.constant 0.000000e+00 : f32
  %3261 = linalg.fill ins(%cst_343 : f32) outs(%3260 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3262 = linalg.matmul ins(%3250, %56 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%3261 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3263 = tensor.expand_shape %3262 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3264 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3265 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%55 : tensor<384xf32>) outs(%3264 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3266 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3267 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3263, %3265 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3266 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3268 = tensor.expand_shape %3267 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %3269 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %3270 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3268 : tensor<1x512x12x32xf32>) outs(%3269 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %3271 = linalg.init_tensor [1, 12, 32, 512] : tensor<1x12x32x512xf32>
  %3272 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d3, d1, d2)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3259 : tensor<1x512x12x32xf32>) outs(%3271 : tensor<1x12x32x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x32x512xf32>
  %3273 = tensor.collapse_shape %3270 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %3274 = tensor.collapse_shape %3272 [[0, 1], [2], [3]] : tensor<1x12x32x512xf32> into tensor<12x32x512xf32>
  %3275 = linalg.init_tensor [12, 512, 512] : tensor<12x512x512xf32>
  %cst_344 = arith.constant 0.000000e+00 : f32
  %3276 = linalg.fill ins(%cst_344 : f32) outs(%3275 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %3277 = linalg.batch_matmul ins(%3273, %3274 : tensor<12x512x32xf32>, tensor<12x32x512xf32>) outs(%3276 : tensor<12x512x512xf32>) -> tensor<12x512x512xf32>
  %3278 = tensor.expand_shape %3277 [[0, 1], [2], [3]] : tensor<12x512x512xf32> into tensor<1x12x512x512xf32>
  %3279 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3280 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_8 : tensor<f32>) outs(%3279 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3281 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3282 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3278, %3280 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3281 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3283 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3284 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, 0, 0, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%10 : tensor<1x1x1x512xf32>) outs(%3283 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3285 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3286 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3282, %3284 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3285 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3287 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3288 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> ()>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%cst_5 : tensor<f32>) outs(%3287 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3289 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3290 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3286, %3288 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3289 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_345 = arith.constant 0xFF800000 : f32
  %3291 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %3292 = linalg.fill ins(%cst_345 : f32) outs(%3291 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %3293 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%3290 : tensor<1x12x512x512xf32>) outs(%3292 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.maxf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %3294 = tensor.expand_shape %3293 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %3295 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3296 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3294 : tensor<1x12x512x1xf32>) outs(%3295 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3297 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3298 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3290, %3296 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3297 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3299 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3300 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3298 : tensor<1x12x512x512xf32>) outs(%3299 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.exp %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %cst_346 = arith.constant -0.000000e+00 : f32
  %3301 = linalg.init_tensor [1, 12, 512] : tensor<1x12x512xf32>
  %3302 = linalg.fill ins(%cst_346 : f32) outs(%3301 : tensor<1x12x512xf32>) -> tensor<1x12x512xf32>
  %3303 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel", "reduction"]} ins(%3300 : tensor<1x12x512x512xf32>) outs(%3302 : tensor<1x12x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x12x512xf32>
  %3304 = tensor.expand_shape %3303 [[0], [1], [2, 3]] : tensor<1x12x512xf32> into tensor<1x12x512x1xf32>
  %3305 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3306 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, 0)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3304 : tensor<1x12x512x1xf32>) outs(%3305 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x512xf32>
  %3307 = linalg.init_tensor [1, 12, 512, 512] : tensor<1x12x512x512xf32>
  %3308 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3300, %3306 : tensor<1x12x512x512xf32>, tensor<1x12x512x512xf32>) outs(%3307 : tensor<1x12x512x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x12x512x512xf32>
  %3309 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_347 = arith.constant 0.000000e+00 : f32
  %3310 = linalg.fill ins(%cst_347 : f32) outs(%3309 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3311 = linalg.matmul ins(%3250, %58 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%3310 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3312 = tensor.expand_shape %3311 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3313 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3314 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%57 : tensor<384xf32>) outs(%3313 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3315 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3316 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3312, %3314 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3315 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3317 = tensor.expand_shape %3316 [[0], [1], [2, 3]] : tensor<1x512x384xf32> into tensor<1x512x12x32xf32>
  %3318 = linalg.init_tensor [1, 12, 512, 32] : tensor<1x12x512x32xf32>
  %3319 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3317 : tensor<1x512x12x32xf32>) outs(%3318 : tensor<1x12x512x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x12x512x32xf32>
  %3320 = tensor.collapse_shape %3308 [[0, 1], [2], [3]] : tensor<1x12x512x512xf32> into tensor<12x512x512xf32>
  %3321 = tensor.collapse_shape %3319 [[0, 1], [2], [3]] : tensor<1x12x512x32xf32> into tensor<12x512x32xf32>
  %3322 = linalg.init_tensor [12, 512, 32] : tensor<12x512x32xf32>
  %cst_348 = arith.constant 0.000000e+00 : f32
  %3323 = linalg.fill ins(%cst_348 : f32) outs(%3322 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %3324 = linalg.batch_matmul ins(%3320, %3321 : tensor<12x512x512xf32>, tensor<12x512x32xf32>) outs(%3323 : tensor<12x512x32xf32>) -> tensor<12x512x32xf32>
  %3325 = tensor.expand_shape %3324 [[0, 1], [2], [3]] : tensor<12x512x32xf32> into tensor<1x12x512x32xf32>
  %3326 = linalg.init_tensor [1, 512, 12, 32] : tensor<1x512x12x32xf32>
  %3327 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2, d3) -> (d0, d2, d1, d3)>, affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%3325 : tensor<1x12x512x32xf32>) outs(%3326 : tensor<1x512x12x32xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x12x32xf32>
  %3328 = tensor.collapse_shape %3327 [[0, 1], [2, 3]] : tensor<1x512x12x32xf32> into tensor<512x384xf32>
  %3329 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_349 = arith.constant 0.000000e+00 : f32
  %3330 = linalg.fill ins(%cst_349 : f32) outs(%3329 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3331 = linalg.matmul ins(%3328, %50 : tensor<512x384xf32>, tensor<384x384xf32>) outs(%3330 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3332 = tensor.expand_shape %3331 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3333 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3334 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%49 : tensor<384xf32>) outs(%3333 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3335 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3336 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3332, %3334 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3335 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3337 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3338 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3336, %3249 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3337 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_350 = arith.constant -0.000000e+00 : f32
  %3339 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3340 = linalg.fill ins(%cst_350 : f32) outs(%3339 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3341 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3338 : tensor<1x512x384xf32>) outs(%3340 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3342 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3343 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3342 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3344 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3345 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3341, %3343 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3344 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3346 = tensor.expand_shape %3345 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3347 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3348 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3346 : tensor<1x512x1xf32>) outs(%3347 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3349 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3350 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3338, %3348 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3349 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3351 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3352 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3350, %3350 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3351 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_351 = arith.constant -0.000000e+00 : f32
  %3353 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3354 = linalg.fill ins(%cst_351 : f32) outs(%3353 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3355 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3352 : tensor<1x512x384xf32>) outs(%3354 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3356 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3357 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3356 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3358 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3359 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3355, %3357 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3358 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3360 = tensor.expand_shape %3359 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3361 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3362 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%3361 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %3363 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3364 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3360, %3362 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%3363 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3365 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3366 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3364 : tensor<1x512x1xf32>) outs(%3365 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3367 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3368 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3366 : tensor<1x512x1xf32>) outs(%3367 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3369 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3370 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%51 : tensor<384xf32>) outs(%3369 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3371 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3372 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3368, %3370 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3371 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3373 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3374 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3338, %3372 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3373 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3375 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3376 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3346 : tensor<1x512x1xf32>) outs(%3375 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3377 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3378 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3376, %3372 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3377 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3379 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3380 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%52 : tensor<384xf32>) outs(%3379 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3381 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3382 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3380, %3378 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3381 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3383 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3384 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3374, %3382 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3383 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3385 = tensor.collapse_shape %3384 [[0, 1], [2]] : tensor<1x512x384xf32> into tensor<512x384xf32>
  %3386 = linalg.init_tensor [512, 1536] : tensor<512x1536xf32>
  %cst_352 = arith.constant 0.000000e+00 : f32
  %3387 = linalg.fill ins(%cst_352 : f32) outs(%3386 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %3388 = linalg.matmul ins(%3385, %60 : tensor<512x384xf32>, tensor<384x1536xf32>) outs(%3387 : tensor<512x1536xf32>) -> tensor<512x1536xf32>
  %3389 = tensor.expand_shape %3388 [[0, 1], [2]] : tensor<512x1536xf32> into tensor<1x512x1536xf32>
  %3390 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3391 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%59 : tensor<1536xf32>) outs(%3390 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3392 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3393 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3389, %3391 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3392 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3394 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3395 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_6 : tensor<f32>) outs(%3394 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3396 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3397 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3393, %3395 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3396 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3398 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3399 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_7 : tensor<f32>) outs(%3398 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3400 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3401 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3393, %3399 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3400 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_353 = arith.constant dense<-4.000000e+00> : tensor<1x512x1536xf32>
  %cst_354 = arith.constant dense<4.000000e+00> : tensor<1x512x1536xf32>
  %3402 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3403 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_353, %3401, %cst_354 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3402 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.maxf %arg3, %arg4 : f32
    %3532 = arith.minf %3531, %arg5 : f32
    linalg.yield %3532 : f32
  } -> tensor<1x512x1536xf32>
  %3404 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3405 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3403, %3403 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3404 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_355 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %3406 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3407 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_355, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3406 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_356 = arith.constant dense<-2.72614237E-10> : tensor<1x512x1536xf32>
  %3408 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3409 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3407, %cst_356 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3408 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3410 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3411 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3409, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3410 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_357 = arith.constant dense<2.77068146E-8> : tensor<1x512x1536xf32>
  %3412 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3413 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3411, %cst_357 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3412 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3414 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3415 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3413, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3414 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_358 = arith.constant dense<-2.10102394E-6> : tensor<1x512x1536xf32>
  %3416 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3417 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3415, %cst_358 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3416 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3418 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3419 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3417, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3418 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_359 = arith.constant dense<-5.69250624E-5> : tensor<1x512x1536xf32>
  %3420 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3421 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3419, %cst_359 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3420 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3422 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3423 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3421, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3422 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_360 = arith.constant dense<-7.34990637E-4> : tensor<1x512x1536xf32>
  %3424 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3425 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3423, %cst_360 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3424 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3426 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3427 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3425, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3426 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_361 = arith.constant dense<-2.954600e-03> : tensor<1x512x1536xf32>
  %3428 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3429 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3427, %cst_361 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3428 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3430 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3431 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3429, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3430 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_362 = arith.constant dense<-0.0160960332> : tensor<1x512x1536xf32>
  %3432 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3433 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3431, %cst_362 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3432 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_363 = arith.constant dense<0.000000e+00> : tensor<1x512x1536xf32>
  %3434 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3435 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_363, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3434 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_364 = arith.constant dense<-1.45660715E-5> : tensor<1x512x1536xf32>
  %3436 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3437 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3435, %cst_364 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3436 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3438 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3439 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3437, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3438 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_365 = arith.constant dense<-2.13374049E-4> : tensor<1x512x1536xf32>
  %3440 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3441 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3439, %cst_365 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3440 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3442 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3443 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3441, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3442 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_366 = arith.constant dense<-0.00168282702> : tensor<1x512x1536xf32>
  %3444 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3445 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3443, %cst_366 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3444 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3446 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3447 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3445, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3446 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_367 = arith.constant dense<-0.00737332925> : tensor<1x512x1536xf32>
  %3448 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3449 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3447, %cst_367 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3448 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3450 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3451 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3449, %3405 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3450 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %cst_368 = arith.constant dense<-0.0142647391> : tensor<1x512x1536xf32>
  %3452 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3453 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3451, %cst_368 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3452 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3454 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3455 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3403, %3433 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3454 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3456 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3457 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3455, %3453 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3456 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3458 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3459 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_3 : tensor<f32>) outs(%3458 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1536xf32>
  %3460 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3461 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3457, %3459 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3460 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3462 = linalg.init_tensor [1, 512, 1536] : tensor<1x512x1536xf32>
  %3463 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3397, %3461 : tensor<1x512x1536xf32>, tensor<1x512x1536xf32>) outs(%3462 : tensor<1x512x1536xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1536xf32>
  %3464 = tensor.collapse_shape %3463 [[0, 1], [2]] : tensor<1x512x1536xf32> into tensor<512x1536xf32>
  %3465 = linalg.init_tensor [512, 384] : tensor<512x384xf32>
  %cst_369 = arith.constant 0.000000e+00 : f32
  %3466 = linalg.fill ins(%cst_369 : f32) outs(%3465 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3467 = linalg.matmul ins(%3464, %62 : tensor<512x1536xf32>, tensor<1536x384xf32>) outs(%3466 : tensor<512x384xf32>) -> tensor<512x384xf32>
  %3468 = tensor.expand_shape %3467 [[0, 1], [2]] : tensor<512x384xf32> into tensor<1x512x384xf32>
  %3469 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3470 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%61 : tensor<384xf32>) outs(%3469 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3471 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3472 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3468, %3470 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3471 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3473 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3474 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3472, %3384 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3473 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_370 = arith.constant -0.000000e+00 : f32
  %3475 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3476 = linalg.fill ins(%cst_370 : f32) outs(%3475 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3477 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3474 : tensor<1x512x384xf32>) outs(%3476 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3478 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3479 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3478 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3480 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3481 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3477, %3479 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3480 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3482 = tensor.expand_shape %3481 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3483 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3484 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3482 : tensor<1x512x1xf32>) outs(%3483 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3485 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3486 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3474, %3484 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3485 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3487 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3488 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3486, %3486 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3487 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %cst_371 = arith.constant -0.000000e+00 : f32
  %3489 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3490 = linalg.fill ins(%cst_371 : f32) outs(%3489 : tensor<1x512xf32>) -> tensor<1x512xf32>
  %3491 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%3488 : tensor<1x512x384xf32>) outs(%3490 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32, %arg4: f32 loc(unknown)):
    %3531 = tensor.from_elements %arg4 : tensor<f32>
    %3532 = tensor.from_elements %arg3 : tensor<f32>
    %3533 = tensor.extract %3531[] : tensor<f32>
    %3534 = tensor.extract %3532[] : tensor<f32>
    %3535 = arith.addf %3533, %3534 : f32
    %3536 = tensor.from_elements %3535 : tensor<f32>
    %3537 = tensor.extract %3536[] : tensor<f32>
    linalg.yield %3537 : f32
  } -> tensor<1x512xf32>
  %3492 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3493 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> ()>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%cst : tensor<f32>) outs(%3492 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512xf32>
  %3494 = linalg.init_tensor [1, 512] : tensor<1x512xf32>
  %3495 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3491, %3493 : tensor<1x512xf32>, tensor<1x512xf32>) outs(%3494 : tensor<1x512xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.divf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512xf32>
  %3496 = tensor.expand_shape %3495 [[0], [1, 2]] : tensor<1x512xf32> into tensor<1x512x1xf32>
  %3497 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3498 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_4 : tensor<f32>) outs(%3497 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x1xf32>
  %3499 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3500 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3496, %3498 : tensor<1x512x1xf32>, tensor<1x512x1xf32>) outs(%3499 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3501 = linalg.init_tensor [1, 512, 1] : tensor<1x512x1xf32>
  %3502 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3500 : tensor<1x512x1xf32>) outs(%3501 : tensor<1x512x1xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.rsqrt %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x1xf32>
  %3503 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3504 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3502 : tensor<1x512x1xf32>) outs(%3503 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3505 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3506 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%63 : tensor<384xf32>) outs(%3505 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3507 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3508 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3504, %3506 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3507 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3509 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3510 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3474, %3508 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3509 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3511 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3512 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3482 : tensor<1x512x1xf32>) outs(%3511 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3513 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3514 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3512, %3508 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3513 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.mulf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3515 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3516 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%64 : tensor<384xf32>) outs(%3515 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    linalg.yield %arg3 : f32
  } -> tensor<1x512x384xf32>
  %3517 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3518 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3516, %3514 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3517 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.subf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3519 = linalg.init_tensor [1, 512, 384] : tensor<1x512x384xf32>
  %3520 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%3510, %3518 : tensor<1x512x384xf32>, tensor<1x512x384xf32>) outs(%3519 : tensor<1x512x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x512x384xf32>
  %3521 = tensor.extract_slice %3520[0, 0, 0] [1, 1, 384] [1, 1, 1] : tensor<1x512x384xf32> to tensor<1x1x384xf32>
  %3522 = tensor.collapse_shape %3521 [[0], [1, 2]] : tensor<1x1x384xf32> into tensor<1x384xf32>
  %3523 = linalg.init_tensor [1, 384] : tensor<1x384xf32>
  %cst_372 = arith.constant 0.000000e+00 : f32
  %3524 = linalg.fill ins(%cst_372 : f32) outs(%3523 : tensor<1x384xf32>) -> tensor<1x384xf32>
  %3525 = linalg.matmul ins(%3522, %210 : tensor<1x384xf32>, tensor<384x384xf32>) outs(%3524 : tensor<1x384xf32>) -> tensor<1x384xf32>
  %3526 = tensor.expand_shape %209 [[0, 1]] : tensor<384xf32> into tensor<1x384xf32>
  %3527 = linalg.init_tensor [1, 384] : tensor<1x384xf32>
  %3528 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3525, %3526 : tensor<1x384xf32>, tensor<1x384xf32>) outs(%3527 : tensor<1x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = arith.addf %arg3, %arg4 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x384xf32>
  %3529 = linalg.init_tensor [1, 384] : tensor<1x384xf32>
  %3530 = linalg.generic {indexing_maps = [affine_map<(d0, d1) -> (d0, d1)>, affine_map<(d0, d1) -> (d0, d1)>], iterator_types = ["parallel", "parallel"]} ins(%3528 : tensor<1x384xf32>) outs(%3529 : tensor<1x384xf32>) {
  ^bb0(%arg3: f32):
    %3531 = math.tanh %arg3 : f32
    linalg.yield %3531 : f32
  } -> tensor<1x384xf32>
  return %3520, %3530 : tensor<1x512x384xf32>, tensor<1x384xf32>
}
