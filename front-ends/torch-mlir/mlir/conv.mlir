torch 
 module attributes {torch.debug_module_name = "Net"} {
  func.func @forward(%arg0: !torch.vtensor<[1,3,28,28],f32>) -> !torch.vtensor<[1,64,12,12],f32> {
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %true = torch.constant.bool true
    %0 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %1 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x32x3x3xf32>) : !torch.vtensor<[64,32,3,3],f32>
    %2 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<32xf32>) : !torch.vtensor<[32],f32>
    %3 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<32x1x3x3xf32>) : !torch.vtensor<[32,1,3,3],f32>
    %int1 = torch.constant.int 1
    %int2 = torch.constant.int 2
    %none = torch.constant.none
    %int0 = torch.constant.int 0
    %false = torch.constant.bool false
    %4 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %5 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %6 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %7 = torch.aten.convolution %arg0, %3, %2, %4, %5, %4, %false, %6, %int1 : !torch.vtensor<[1,3,28,28],f32>, !torch.vtensor<[32,1,3,3],f32>, !torch.vtensor<[32],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,32,26,26],f32>
    %8 = torch.aten.relu %7 : !torch.vtensor<[1,32,26,26],f32> -> !torch.vtensor<[1,32,26,26],f32>
    %9 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %10 = torch.aten.convolution %8, %1, %0, %4, %5, %4, %false, %9, %int1 : !torch.vtensor<[1,32,26,26],f32>, !torch.vtensor<[64,32,3,3],f32>, !torch.vtensor<[64],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,24,24],f32>
    %11 = torch.aten.relu %10 : !torch.vtensor<[1,64,24,24],f32> -> !torch.vtensor<[1,64,24,24],f32>
    %12 = torch.prim.ListConstruct %int2, %int2 : (!torch.int, !torch.int) -> !torch.list<int>
    %13 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %14 = torch.aten.max_pool2d %11, %12, %13, %5, %4, %false : !torch.vtensor<[1,64,24,24],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool -> !torch.vtensor<[1,64,12,12],f32>
    %values, %indices = torch.aten.max.dim %14, %int1, %true : !torch.vtensor<[1,64,12,12],f32>, !torch.int, !torch.bool -> !torch.vtensor<[1,1,12,12],f32>, !torch.vtensor<[1,1,12,12],si64>
    %15 = torch.aten.sub.Tensor %14, %values, %float1.000000e00 : !torch.vtensor<[1,64,12,12],f32>, !torch.vtensor<[1,1,12,12],f32>, !torch.float -> !torch.vtensor<[1,64,12,12],f32>
    %16 = torch.aten.exp %15 : !torch.vtensor<[1,64,12,12],f32> -> !torch.vtensor<[1,64,12,12],f32>
    %17 = torch.prim.ListConstruct %int1 : (!torch.int) -> !torch.list<int>
    %18 = torch.aten.sum.dim_IntList %16, %17, %true, %none : !torch.vtensor<[1,64,12,12],f32>, !torch.list<int>, !torch.bool, !torch.none -> !torch.vtensor<[1,1,12,12],f32>
    %19 = torch.aten.log %18 : !torch.vtensor<[1,1,12,12],f32> -> !torch.vtensor<[1,1,12,12],f32>
    %20 = torch.aten.sub.Tensor %15, %19, %float1.000000e00 : !torch.vtensor<[1,64,12,12],f32>, !torch.vtensor<[1,1,12,12],f32>, !torch.float -> !torch.vtensor<[1,64,12,12],f32>
    return %20 : !torch.vtensor<[1,64,12,12],f32>
  }
}

