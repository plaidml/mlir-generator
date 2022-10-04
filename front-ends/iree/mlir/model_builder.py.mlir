func.func @predict(%arg0: !iree_input.list<!iree_input.variant>) -> !iree_input.buffer_view attributes {iree.abi = "{\22a\22:[[\22slist\22,[\22ndarray\22,\22f32\22,2,1,128]]],\22r\22:[[\22ndarray\22,\22f32\22,3,1,1,10]],\22v\22:1}"} {
  %c0 = arith.constant 0 : index
  %0 = iree_input.list.get %arg0[%c0] : !iree_input.list<!iree_input.variant> -> !iree_input.buffer_view
  %1 = iree_input.cast.buffer_view_to_tensor %0 : !iree_input.buffer_view -> tensor<1x128xf32>
  %2 = call @__inference_predict_670(%1) : (tensor<1x128xf32>) -> tensor<1x1x10xf32>
  %3 = iree_input.cast.tensor_to_buffer_view %2 : tensor<1x1x10xf32> -> !iree_input.buffer_view
  return %3 : !iree_input.buffer_view
}

func.func private @__inference_predict_670(%arg0: tensor<1x128xf32> {tf._user_specified_name = "x"}) -> tensor<1x1x10xf32> attributes {tf._construction_context = "kEagerRuntime", tf._input_shapes = [#tf_type.shape<1x128>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>, #tf_type.shape<>], tf.signature.is_stateful} {
  %cst = arith.constant dense<-0.000000e+00> : tensor<f32>
  %cst_0 = arith.constant dense<0xFF800000> : tensor<f32>
  %cst_1 = arith.constant dense<0.000000e+00> : tensor<f32>
  %0 = ml_program.global_load @__sm_node14__layers.0.b : tensor<256xf32>
  %1 = ml_program.global_load @__sm_node10__output_layer.b : tensor<10xf32>
  %2 = ml_program.global_load @__sm_node7__input_layer.b : tensor<256xf32>
  %3 = ml_program.global_load @__sm_node13__layers.0.w : tensor<256x256xf32>
  %4 = ml_program.global_load @__sm_node9__output_layer.w : tensor<256x10xf32>
  %5 = ml_program.global_load @__sm_node6__input_layer.w : tensor<128x256xf32>
  %6 = tensor.expand_shape %arg0 [[0], [1, 2]] : tensor<1x128xf32> into tensor<1x1x128xf32>
  %7 = tensor.expand_shape %5 [[0, 1], [2]] : tensor<128x256xf32> into tensor<1x128x256xf32>
  %8 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %cst_2 = arith.constant 0.000000e+00 : f32
  %9 = linalg.fill ins(%cst_2 : f32) outs(%8 : tensor<1x1x256xf32>) -> tensor<1x1x256xf32>
  %10 = linalg.batch_matmul ins(%6, %7 : tensor<1x1x128xf32>, tensor<1x128x256xf32>) outs(%9 : tensor<1x1x256xf32>) -> tensor<1x1x256xf32>
  %11 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %12 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%2 : tensor<256xf32>) outs(%11 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x256xf32>
  %13 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %14 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%10, %12 : tensor<1x1x256xf32>, tensor<1x1x256xf32>) outs(%13 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.addf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x256xf32>
  %15 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %16 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_1 : tensor<f32>) outs(%15 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x256xf32>
  %17 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %18 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%14, %16 : tensor<1x1x256xf32>, tensor<1x1x256xf32>) outs(%17 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.maxf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x256xf32>
  %19 = tensor.expand_shape %3 [[0, 1], [2]] : tensor<256x256xf32> into tensor<1x256x256xf32>
  %20 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %cst_3 = arith.constant 0.000000e+00 : f32
  %21 = linalg.fill ins(%cst_3 : f32) outs(%20 : tensor<1x1x256xf32>) -> tensor<1x1x256xf32>
  %22 = linalg.batch_matmul ins(%18, %19 : tensor<1x1x256xf32>, tensor<1x256x256xf32>) outs(%21 : tensor<1x1x256xf32>) -> tensor<1x1x256xf32>
  %23 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %24 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%0 : tensor<256xf32>) outs(%23 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x256xf32>
  %25 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %26 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%22, %24 : tensor<1x1x256xf32>, tensor<1x1x256xf32>) outs(%25 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.addf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x256xf32>
  %27 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %28 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_1 : tensor<f32>) outs(%27 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x256xf32>
  %29 = linalg.init_tensor [1, 1, 256] : tensor<1x1x256xf32>
  %30 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%26, %28 : tensor<1x1x256xf32>, tensor<1x1x256xf32>) outs(%29 : tensor<1x1x256xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.maxf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x256xf32>
  %31 = tensor.expand_shape %4 [[0, 1], [2]] : tensor<256x10xf32> into tensor<1x256x10xf32>
  %32 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %cst_4 = arith.constant 0.000000e+00 : f32
  %33 = linalg.fill ins(%cst_4 : f32) outs(%32 : tensor<1x1x10xf32>) -> tensor<1x1x10xf32>
  %34 = linalg.batch_matmul ins(%30, %31 : tensor<1x1x256xf32>, tensor<1x256x10xf32>) outs(%33 : tensor<1x1x10xf32>) -> tensor<1x1x10xf32>
  %35 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %36 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%1 : tensor<10xf32>) outs(%35 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x10xf32>
  %37 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %38 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%34, %36 : tensor<1x1x10xf32>, tensor<1x1x10xf32>) outs(%37 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.addf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x10xf32>
  %39 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %40 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> ()>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%cst_1 : tensor<f32>) outs(%39 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x10xf32>
  %41 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %42 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%38, %40 : tensor<1x1x10xf32>, tensor<1x1x10xf32>) outs(%41 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.maxf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x10xf32>
  %cst_5 = arith.constant 0xFF800000 : f32
  %43 = linalg.init_tensor [1, 1] : tensor<1x1xf32>
  %44 = linalg.fill ins(%cst_5 : f32) outs(%43 : tensor<1x1xf32>) -> tensor<1x1xf32>
  %45 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%42 : tensor<1x1x10xf32>) outs(%44 : tensor<1x1xf32>) {
  ^bb0(%arg1: f32, %arg2: f32 loc(unknown)):
    %61 = tensor.from_elements %arg2 : tensor<f32>
    %62 = tensor.from_elements %arg1 : tensor<f32>
    %63 = tensor.extract %61[] : tensor<f32>
    %64 = tensor.extract %62[] : tensor<f32>
    %65 = arith.maxf %63, %64 : f32
    %66 = tensor.from_elements %65 : tensor<f32>
    %67 = tensor.extract %66[] : tensor<f32>
    linalg.yield %67 : f32
  } -> tensor<1x1xf32>
  %46 = tensor.expand_shape %45 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
  %47 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %48 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%46 : tensor<1x1x1xf32>) outs(%47 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x10xf32>
  %49 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %50 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%42, %48 : tensor<1x1x10xf32>, tensor<1x1x10xf32>) outs(%49 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.subf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x10xf32>
  %51 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %52 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%50 : tensor<1x1x10xf32>) outs(%51 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    %61 = math.exp %arg1 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x10xf32>
  %cst_6 = arith.constant -0.000000e+00 : f32
  %53 = linalg.init_tensor [1, 1] : tensor<1x1xf32>
  %54 = linalg.fill ins(%cst_6 : f32) outs(%53 : tensor<1x1xf32>) -> tensor<1x1xf32>
  %55 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1)>], iterator_types = ["parallel", "parallel", "reduction"]} ins(%52 : tensor<1x1x10xf32>) outs(%54 : tensor<1x1xf32>) {
  ^bb0(%arg1: f32, %arg2: f32 loc(unknown)):
    %61 = tensor.from_elements %arg2 : tensor<f32>
    %62 = tensor.from_elements %arg1 : tensor<f32>
    %63 = tensor.extract %61[] : tensor<f32>
    %64 = tensor.extract %62[] : tensor<f32>
    %65 = arith.addf %63, %64 : f32
    %66 = tensor.from_elements %65 : tensor<f32>
    %67 = tensor.extract %66[] : tensor<f32>
    linalg.yield %67 : f32
  } -> tensor<1x1xf32>
  %56 = tensor.expand_shape %55 [[0], [1, 2]] : tensor<1x1xf32> into tensor<1x1x1xf32>
  %57 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %58 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, 0)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%56 : tensor<1x1x1xf32>) outs(%57 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    linalg.yield %arg1 : f32
  } -> tensor<1x1x10xf32>
  %59 = linalg.init_tensor [1, 1, 10] : tensor<1x1x10xf32>
  %60 = linalg.generic {indexing_maps = [affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>, affine_map<(d0, d1, d2) -> (d0, d1, d2)>], iterator_types = ["parallel", "parallel", "parallel"]} ins(%52, %58 : tensor<1x1x10xf32>, tensor<1x1x10xf32>) outs(%59 : tensor<1x1x10xf32>) {
  ^bb0(%arg1: f32):
    %61 = arith.divf %arg1, %arg2 : f32
    linalg.yield %61 : f32
  } -> tensor<1x1x10xf32>
  return %60 : tensor<1x1x10xf32>
}


