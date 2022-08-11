torch 
 module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: !torch.vtensor<[1,3,224,224],f32>) -> !torch.vtensor<[1,1000],f32> {
    %int7 = torch.constant.int 7
    %true = torch.constant.bool true
    %false = torch.constant.bool false
    %0 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1000xf32>) : !torch.vtensor<[1000],f32>
    %1 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1000x512xf32>) : !torch.vtensor<[1000,512],f32>
    %2 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %3 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %4 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %5 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %6 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>) : !torch.vtensor<[512,512,3,3],f32>
    %7 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %8 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %9 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %10 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %11 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>) : !torch.vtensor<[512,512,3,3],f32>
    %12 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %13 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %14 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %15 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x256x1x1xf32>) : !torch.vtensor<[512,256,1,1],f32>
    %16 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %17 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %18 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %19 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %20 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>) : !torch.vtensor<[512,512,3,3],f32>
    %21 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %22 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %23 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %24 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %25 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x256x3x3xf32>) : !torch.vtensor<[512,256,3,3],f32>
    %26 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %27 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %28 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %29 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %30 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>) : !torch.vtensor<[256,256,3,3],f32>
    %31 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %32 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %33 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %34 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %35 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>) : !torch.vtensor<[256,256,3,3],f32>
    %36 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %37 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %38 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %39 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128x1x1xf32>) : !torch.vtensor<[256,128,1,1],f32>
    %40 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %41 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %42 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %43 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %44 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>) : !torch.vtensor<[256,256,3,3],f32>
    %45 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %46 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %47 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %48 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %49 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128x3x3xf32>) : !torch.vtensor<[256,128,3,3],f32>
    %50 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %51 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %52 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %53 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %54 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>) : !torch.vtensor<[128,128,3,3],f32>
    %55 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %56 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %57 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %58 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %59 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>) : !torch.vtensor<[128,128,3,3],f32>
    %60 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %61 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %62 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %63 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x64x1x1xf32>) : !torch.vtensor<[128,64,1,1],f32>
    %64 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %65 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %66 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %67 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %68 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>) : !torch.vtensor<[128,128,3,3],f32>
    %69 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %70 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %71 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %72 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %73 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x64x3x3xf32>) : !torch.vtensor<[128,64,3,3],f32>
    %74 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %75 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %76 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %77 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %78 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %79 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %80 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %81 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %82 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %83 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %84 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %85 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %86 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %87 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %88 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %89 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %90 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %91 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %92 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %93 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %94 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %95 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %96 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %97 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %98 = torch.vtensor.literal(opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x3x7x7xf32>) : !torch.vtensor<[64,3,7,7],f32>
    %int3 = torch.constant.int 3
    %int2 = torch.constant.int 2
    %int1 = torch.constant.int 1
    %int-1 = torch.constant.int -1
    %int0 = torch.constant.int 0
    %float1.000000e-05 = torch.constant.float 1.000000e-05
    %float1.000000e-01 = torch.constant.float 1.000000e-01
    %none = torch.constant.none
    %99 = torch.prim.ListConstruct %int2, %int2 : (!torch.int, !torch.int) -> !torch.list<int>
    %100 = torch.prim.ListConstruct %int3, %int3 : (!torch.int, !torch.int) -> !torch.list<int>
    %101 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %102 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %103 = torch.aten.convolution %arg0, %98, %none, %99, %100, %101, %false, %102, %int1 : !torch.vtensor<[1,3,224,224],f32>, !torch.vtensor<[64,3,7,7],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,112,112],f32>
    %104 = torch.aten.batch_norm %103, %95, %94, %97, %96, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,112,112],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,112,112],f32>
    %105 = torch.aten.relu %104 : !torch.vtensor<[1,64,112,112],f32> -> !torch.vtensor<[1,64,112,112],f32>
    %106 = torch.aten.max_pool2d %105, %100, %99, %101, %101, %false : !torch.vtensor<[1,64,112,112],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %107 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %108 = torch.aten.convolution %106, %93, %none, %101, %101, %101, %false, %107, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %109 = torch.aten.batch_norm %108, %90, %89, %92, %91, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %110 = torch.aten.relu %109 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %111 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %112 = torch.aten.convolution %110, %88, %none, %101, %101, %101, %false, %111, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %113 = torch.aten.batch_norm %112, %85, %84, %87, %86, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %114 = torch.aten.add.Tensor %113, %106, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[1,64,56,56],f32>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %115 = torch.aten.relu %114 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %116 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %117 = torch.aten.convolution %115, %83, %none, %101, %101, %101, %false, %116, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %118 = torch.aten.batch_norm %117, %80, %79, %82, %81, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %119 = torch.aten.relu %118 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %120 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %121 = torch.aten.convolution %119, %78, %none, %101, %101, %101, %false, %120, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %122 = torch.aten.batch_norm %121, %75, %74, %77, %76, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %123 = torch.aten.add.Tensor %122, %115, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[1,64,56,56],f32>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %124 = torch.aten.relu %123 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %125 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %126 = torch.aten.convolution %124, %73, %none, %99, %101, %101, %false, %125, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[128,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %127 = torch.aten.batch_norm %126, %70, %69, %72, %71, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %128 = torch.aten.relu %127 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %129 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %130 = torch.aten.convolution %128, %68, %none, %101, %101, %101, %false, %129, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %131 = torch.aten.batch_norm %130, %65, %64, %67, %66, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %132 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %133 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %134 = torch.aten.convolution %124, %63, %none, %99, %132, %101, %false, %133, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[128,64,1,1],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %135 = torch.aten.batch_norm %134, %60, %64, %62, %61, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %136 = torch.aten.add.Tensor %131, %135, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[1,128,28,28],f32>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %137 = torch.aten.relu %136 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %138 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %139 = torch.aten.convolution %137, %59, %none, %101, %101, %101, %false, %138, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %140 = torch.aten.batch_norm %139, %56, %55, %58, %57, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %141 = torch.aten.relu %140 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %142 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %143 = torch.aten.convolution %141, %54, %none, %101, %101, %101, %false, %142, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %144 = torch.aten.batch_norm %143, %51, %50, %53, %52, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %145 = torch.aten.add.Tensor %144, %137, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[1,128,28,28],f32>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %146 = torch.aten.relu %145 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %147 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %148 = torch.aten.convolution %146, %49, %none, %99, %101, %101, %false, %147, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[256,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %149 = torch.aten.batch_norm %148, %46, %45, %48, %47, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %150 = torch.aten.relu %149 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %151 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %152 = torch.aten.convolution %150, %44, %none, %101, %101, %101, %false, %151, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %153 = torch.aten.batch_norm %152, %41, %40, %43, %42, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %154 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %155 = torch.aten.convolution %146, %39, %none, %99, %132, %101, %false, %154, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[256,128,1,1],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %156 = torch.aten.batch_norm %155, %36, %40, %38, %37, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %157 = torch.aten.add.Tensor %153, %156, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[1,256,14,14],f32>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %158 = torch.aten.relu %157 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %159 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %160 = torch.aten.convolution %158, %35, %none, %101, %101, %101, %false, %159, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %161 = torch.aten.batch_norm %160, %32, %31, %34, %33, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %162 = torch.aten.relu %161 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %163 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %164 = torch.aten.convolution %162, %30, %none, %101, %101, %101, %false, %163, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %165 = torch.aten.batch_norm %164, %27, %26, %29, %28, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %166 = torch.aten.add.Tensor %165, %158, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[1,256,14,14],f32>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %167 = torch.aten.relu %166 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %168 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %169 = torch.aten.convolution %167, %25, %none, %99, %101, %101, %false, %168, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[512,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %170 = torch.aten.batch_norm %169, %22, %21, %24, %23, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %171 = torch.aten.relu %170 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %172 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %173 = torch.aten.convolution %171, %20, %none, %101, %101, %101, %false, %172, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512,512,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %174 = torch.aten.batch_norm %173, %17, %16, %19, %18, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %175 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %176 = torch.aten.convolution %167, %15, %none, %99, %132, %101, %false, %175, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[512,256,1,1],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %177 = torch.aten.batch_norm %176, %12, %16, %14, %13, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %178 = torch.aten.add.Tensor %174, %177, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[1,512,7,7],f32>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %179 = torch.aten.relu %178 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %180 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %181 = torch.aten.convolution %179, %11, %none, %101, %101, %101, %false, %180, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512,512,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %182 = torch.aten.batch_norm %181, %8, %7, %10, %9, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %183 = torch.aten.relu %182 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %184 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %185 = torch.aten.convolution %183, %6, %none, %101, %101, %101, %false, %184, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512,512,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %186 = torch.aten.batch_norm %185, %3, %2, %5, %4, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %187 = torch.aten.add.Tensor %186, %179, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[1,512,7,7],f32>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %188 = torch.aten.relu %187 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %189 = torch.prim.ListConstruct %int7, %int7 : (!torch.int, !torch.int) -> !torch.list<int>
    %190 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %191 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %192 = torch.aten.avg_pool2d %188, %189, %190, %191, %false, %true, %none : !torch.vtensor<[1,512,7,7],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,512,1,1],f32>
    %193 = torch.aten.flatten.using_ints %192, %int1, %int-1 : !torch.vtensor<[1,512,1,1],f32>, !torch.int, !torch.int -> !torch.vtensor<[1,512],f32>
    %194 = torch.aten.linear %193, %1, %0 : !torch.vtensor<[1,512],f32>, !torch.vtensor<[1000,512],f32>, !torch.vtensor<[1000],f32> -> !torch.vtensor<[1,1000],f32>
    return %194 : !torch.vtensor<[1,1000],f32>
  }
}

linalg-on-tensors 
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

tosa 
 module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %1 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %2 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %3 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1000x512xf32>} : () -> tensor<1000x512xf32>
    %4 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %5 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %6 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x256x1x1xf32>} : () -> tensor<512x256x1x1xf32>
    %7 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x512x3x3xf32>} : () -> tensor<512x512x3x3xf32>
    %8 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x256x3x3xf32>} : () -> tensor<512x256x3x3xf32>
    %9 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>} : () -> tensor<256x256x3x3xf32>
    %10 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>} : () -> tensor<256x256x3x3xf32>
    %11 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128x1x1xf32>} : () -> tensor<256x128x1x1xf32>
    %12 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x256x3x3xf32>} : () -> tensor<256x256x3x3xf32>
    %13 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x128x3x3xf32>} : () -> tensor<256x128x3x3xf32>
    %14 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>} : () -> tensor<128x128x3x3xf32>
    %15 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>} : () -> tensor<128x128x3x3xf32>
    %16 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x64x1x1xf32>} : () -> tensor<128x64x1x1xf32>
    %17 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x128x3x3xf32>} : () -> tensor<128x128x3x3xf32>
    %18 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x64x3x3xf32>} : () -> tensor<128x64x3x3xf32>
    %19 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>} : () -> tensor<64x64x3x3xf32>
    %20 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>} : () -> tensor<64x64x3x3xf32>
    %21 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>} : () -> tensor<64x64x3x3xf32>
    %22 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x64x3x3xf32>} : () -> tensor<64x64x3x3xf32>
    %23 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x3x7x7xf32>} : () -> tensor<64x3x7x7xf32>
    %24 = "tosa.const"() {value = dense<0.000000e+00> : tensor<64xf32>} : () -> tensor<64xf32>
    %25 = "tosa.const"() {value = dense<[0, 2, 3, 1]> : tensor<4xi32>} : () -> tensor<4xi32>
    %26 = "tosa.const"() {value = dense<[0, 3, 1, 2]> : tensor<4xi32>} : () -> tensor<4xi32>
    %27 = "tosa.const"() {value = dense<0.000000e+00> : tensor<128xf32>} : () -> tensor<128xf32>
    %28 = "tosa.const"() {value = dense<0.000000e+00> : tensor<256xf32>} : () -> tensor<256xf32>
    %29 = "tosa.const"() {value = dense<0.000000e+00> : tensor<512xf32>} : () -> tensor<512xf32>
    %30 = "tosa.const"() {value = dense<[1, 0]> : tensor<2xi32>} : () -> tensor<2xi32>
    %31 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %32 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %33 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %34 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %35 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %36 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %37 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %38 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %39 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %40 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %41 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %42 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %43 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %44 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %45 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %46 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %47 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<64x1x1xf32>} : () -> tensor<64x1x1xf32>
    %48 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %49 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %50 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x64x1x1xf32>} : () -> tensor<1x64x1x1xf32>
    %51 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %52 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %53 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %54 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %55 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %56 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %57 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %58 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %59 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %60 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %61 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %62 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %63 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %64 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %65 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<128x1x1xf32>} : () -> tensor<128x1x1xf32>
    %66 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %67 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %68 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x128x1x1xf32>} : () -> tensor<1x128x1x1xf32>
    %69 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %70 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %71 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %72 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %73 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %74 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %75 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %76 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %77 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %78 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %79 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %80 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %81 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %82 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %83 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<256x1x1xf32>} : () -> tensor<256x1x1xf32>
    %84 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %85 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %86 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x256x1x1xf32>} : () -> tensor<1x256x1x1xf32>
    %87 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %88 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %89 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %90 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %91 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %92 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %93 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %94 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %95 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %96 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %97 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %98 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %99 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %100 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %101 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<512x1x1xf32>} : () -> tensor<512x1x1xf32>
    %102 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %103 = "tosa.const"() {value = dense<9.99999974E-6> : tensor<1x1x1xf32>} : () -> tensor<1x1x1xf32>
    %104 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %105 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x512x1x1xf32>} : () -> tensor<1x512x1x1xf32>
    %106 = "tosa.const"() {value = opaque<"elided_large_const", "0xDEADBEEF"> : tensor<1x1000xf32>} : () -> tensor<1x1000xf32>
    %107 = "tosa.transpose"(%arg0, %25) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %108 = "tosa.transpose"(%23, %25) : (tensor<64x3x7x7xf32>, tensor<4xi32>) -> tensor<64x7x7x3xf32>
    %109 = "tosa.conv2d"(%107, %108, %24) {dilation = [1, 1], pad = [3, 3, 3, 3], stride = [2, 2]} : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %110 = "tosa.transpose"(%109, %26) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %111 = "tosa.sub"(%110, %32) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %112 = "tosa.add"(%31, %103) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %113 = "tosa.rsqrt"(%112) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %114 = "tosa.reshape"(%113) {new_shape = [1, 64, 1, 1]} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %115 = "tosa.mul"(%111, %114) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %116 = "tosa.mul"(%115, %33) {shift = 0 : i32} : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %117 = "tosa.add"(%116, %34) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %118 = "tosa.clamp"(%117) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %119 = "tosa.transpose"(%118, %25) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %120 = "tosa.max_pool2d"(%119) {kernel = [3, 3], pad = [1, 1, 1, 1], stride = [2, 2]} : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %26) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.transpose"(%121, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %123 = "tosa.transpose"(%22, %25) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %124 = "tosa.conv2d"(%122, %123, %24) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %125 = "tosa.transpose"(%124, %26) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %126 = "tosa.sub"(%125, %36) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %127 = "tosa.add"(%35, %103) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %128 = "tosa.rsqrt"(%127) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %129 = "tosa.reshape"(%128) {new_shape = [1, 64, 1, 1]} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %130 = "tosa.mul"(%126, %129) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %131 = "tosa.mul"(%130, %37) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %132 = "tosa.add"(%131, %38) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %133 = "tosa.clamp"(%132) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %134 = "tosa.transpose"(%133, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %135 = "tosa.transpose"(%21, %25) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %136 = "tosa.conv2d"(%134, %135, %24) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %137 = "tosa.transpose"(%136, %26) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %138 = "tosa.sub"(%137, %40) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %139 = "tosa.add"(%39, %103) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %140 = "tosa.rsqrt"(%139) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %141 = "tosa.reshape"(%140) {new_shape = [1, 64, 1, 1]} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %142 = "tosa.mul"(%138, %141) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %143 = "tosa.mul"(%142, %41) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %144 = "tosa.add"(%143, %42) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %145 = "tosa.add"(%144, %121) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %146 = "tosa.clamp"(%145) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %147 = "tosa.transpose"(%146, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %148 = "tosa.transpose"(%20, %25) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %149 = "tosa.conv2d"(%147, %148, %24) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %150 = "tosa.transpose"(%149, %26) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %151 = "tosa.sub"(%150, %44) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %152 = "tosa.add"(%43, %103) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %153 = "tosa.rsqrt"(%152) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %154 = "tosa.reshape"(%153) {new_shape = [1, 64, 1, 1]} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %155 = "tosa.mul"(%151, %154) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %156 = "tosa.mul"(%155, %45) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %157 = "tosa.add"(%156, %46) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %158 = "tosa.clamp"(%157) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %159 = "tosa.transpose"(%158, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %160 = "tosa.transpose"(%19, %25) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %161 = "tosa.conv2d"(%159, %160, %24) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %162 = "tosa.transpose"(%161, %26) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %163 = "tosa.sub"(%162, %48) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %164 = "tosa.add"(%47, %103) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %165 = "tosa.rsqrt"(%164) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %166 = "tosa.reshape"(%165) {new_shape = [1, 64, 1, 1]} : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %167 = "tosa.mul"(%163, %166) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %168 = "tosa.mul"(%167, %49) {shift = 0 : i32} : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %169 = "tosa.add"(%168, %50) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %170 = "tosa.add"(%169, %146) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %171 = "tosa.clamp"(%170) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %172 = "tosa.transpose"(%171, %25) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %173 = "tosa.transpose"(%18, %25) : (tensor<128x64x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x64xf32>
    %174 = "tosa.conv2d"(%172, %173, %27) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [2, 2]} : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %175 = "tosa.transpose"(%174, %26) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.sub"(%175, %52) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %177 = "tosa.add"(%51, %103) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %178 = "tosa.rsqrt"(%177) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %179 = "tosa.reshape"(%178) {new_shape = [1, 128, 1, 1]} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %180 = "tosa.mul"(%176, %179) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %181 = "tosa.mul"(%180, %53) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.add"(%181, %54) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.clamp"(%182) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %184 = "tosa.transpose"(%183, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %185 = "tosa.transpose"(%17, %25) : (tensor<128x128x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x128xf32>
    %186 = "tosa.conv2d"(%184, %185, %27) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %187 = "tosa.transpose"(%186, %26) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %188 = "tosa.sub"(%187, %56) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %189 = "tosa.add"(%55, %103) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %190 = "tosa.rsqrt"(%189) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %191 = "tosa.reshape"(%190) {new_shape = [1, 128, 1, 1]} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %192 = "tosa.mul"(%188, %191) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %193 = "tosa.mul"(%192, %57) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %194 = "tosa.add"(%193, %2) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %195 = "tosa.transpose"(%16, %25) : (tensor<128x64x1x1xf32>, tensor<4xi32>) -> tensor<128x1x1x64xf32>
    %196 = "tosa.conv2d"(%172, %195, %27) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [2, 2]} : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %197 = "tosa.transpose"(%196, %26) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %198 = "tosa.sub"(%197, %59) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %199 = "tosa.add"(%58, %103) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %200 = "tosa.rsqrt"(%199) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %201 = "tosa.reshape"(%200) {new_shape = [1, 128, 1, 1]} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %202 = "tosa.mul"(%198, %201) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %203 = "tosa.mul"(%202, %60) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %204 = "tosa.add"(%203, %2) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %205 = "tosa.add"(%194, %204) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %206 = "tosa.clamp"(%205) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %207 = "tosa.transpose"(%206, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %208 = "tosa.transpose"(%15, %25) : (tensor<128x128x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x128xf32>
    %209 = "tosa.conv2d"(%207, %208, %27) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %210 = "tosa.transpose"(%209, %26) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %211 = "tosa.sub"(%210, %62) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %212 = "tosa.add"(%61, %103) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %213 = "tosa.rsqrt"(%212) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %214 = "tosa.reshape"(%213) {new_shape = [1, 128, 1, 1]} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %215 = "tosa.mul"(%211, %214) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %216 = "tosa.mul"(%215, %63) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %217 = "tosa.add"(%216, %64) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %218 = "tosa.clamp"(%217) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %219 = "tosa.transpose"(%218, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %220 = "tosa.transpose"(%14, %25) : (tensor<128x128x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x128xf32>
    %221 = "tosa.conv2d"(%219, %220, %27) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %222 = "tosa.transpose"(%221, %26) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %223 = "tosa.sub"(%222, %66) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %224 = "tosa.add"(%65, %103) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %225 = "tosa.rsqrt"(%224) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %226 = "tosa.reshape"(%225) {new_shape = [1, 128, 1, 1]} : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %227 = "tosa.mul"(%223, %226) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %228 = "tosa.mul"(%227, %67) {shift = 0 : i32} : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.add"(%228, %68) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %230 = "tosa.add"(%229, %206) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %231 = "tosa.clamp"(%230) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %232 = "tosa.transpose"(%231, %25) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %233 = "tosa.transpose"(%13, %25) : (tensor<256x128x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x128xf32>
    %234 = "tosa.conv2d"(%232, %233, %28) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [2, 2]} : (tensor<1x28x28x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %235 = "tosa.transpose"(%234, %26) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %236 = "tosa.sub"(%235, %70) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %237 = "tosa.add"(%69, %103) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %238 = "tosa.rsqrt"(%237) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %239 = "tosa.reshape"(%238) {new_shape = [1, 256, 1, 1]} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %240 = "tosa.mul"(%236, %239) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %241 = "tosa.mul"(%240, %71) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %242 = "tosa.add"(%241, %72) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %243 = "tosa.clamp"(%242) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %244 = "tosa.transpose"(%243, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %245 = "tosa.transpose"(%12, %25) : (tensor<256x256x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x256xf32>
    %246 = "tosa.conv2d"(%244, %245, %28) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %247 = "tosa.transpose"(%246, %26) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %248 = "tosa.sub"(%247, %74) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %249 = "tosa.add"(%73, %103) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %250 = "tosa.rsqrt"(%249) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %251 = "tosa.reshape"(%250) {new_shape = [1, 256, 1, 1]} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %252 = "tosa.mul"(%248, %251) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %253 = "tosa.mul"(%252, %75) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %254 = "tosa.add"(%253, %1) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %255 = "tosa.transpose"(%11, %25) : (tensor<256x128x1x1xf32>, tensor<4xi32>) -> tensor<256x1x1x128xf32>
    %256 = "tosa.conv2d"(%232, %255, %28) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [2, 2]} : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %257 = "tosa.transpose"(%256, %26) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %258 = "tosa.sub"(%257, %77) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %259 = "tosa.add"(%76, %103) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %260 = "tosa.rsqrt"(%259) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %261 = "tosa.reshape"(%260) {new_shape = [1, 256, 1, 1]} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %262 = "tosa.mul"(%258, %261) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.mul"(%262, %78) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.add"(%263, %1) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %265 = "tosa.add"(%254, %264) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %266 = "tosa.clamp"(%265) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %267 = "tosa.transpose"(%266, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %268 = "tosa.transpose"(%10, %25) : (tensor<256x256x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x256xf32>
    %269 = "tosa.conv2d"(%267, %268, %28) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %270 = "tosa.transpose"(%269, %26) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %271 = "tosa.sub"(%270, %80) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %272 = "tosa.add"(%79, %103) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %273 = "tosa.rsqrt"(%272) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %274 = "tosa.reshape"(%273) {new_shape = [1, 256, 1, 1]} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %275 = "tosa.mul"(%271, %274) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %276 = "tosa.mul"(%275, %81) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %277 = "tosa.add"(%276, %82) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %278 = "tosa.clamp"(%277) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %279 = "tosa.transpose"(%278, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %280 = "tosa.transpose"(%9, %25) : (tensor<256x256x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x256xf32>
    %281 = "tosa.conv2d"(%279, %280, %28) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %282 = "tosa.transpose"(%281, %26) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %283 = "tosa.sub"(%282, %84) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %284 = "tosa.add"(%83, %103) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %285 = "tosa.rsqrt"(%284) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %286 = "tosa.reshape"(%285) {new_shape = [1, 256, 1, 1]} : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %287 = "tosa.mul"(%283, %286) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %288 = "tosa.mul"(%287, %85) {shift = 0 : i32} : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %289 = "tosa.add"(%288, %86) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %290 = "tosa.add"(%289, %266) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %291 = "tosa.clamp"(%290) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %292 = "tosa.transpose"(%291, %25) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %293 = "tosa.transpose"(%8, %25) : (tensor<512x256x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x256xf32>
    %294 = "tosa.conv2d"(%292, %293, %29) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [2, 2]} : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %295 = "tosa.transpose"(%294, %26) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %296 = "tosa.sub"(%295, %88) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %297 = "tosa.add"(%87, %103) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %298 = "tosa.rsqrt"(%297) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %299 = "tosa.reshape"(%298) {new_shape = [1, 512, 1, 1]} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %300 = "tosa.mul"(%296, %299) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %301 = "tosa.mul"(%300, %89) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %302 = "tosa.add"(%301, %90) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %303 = "tosa.clamp"(%302) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %304 = "tosa.transpose"(%303, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %305 = "tosa.transpose"(%7, %25) : (tensor<512x512x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x512xf32>
    %306 = "tosa.conv2d"(%304, %305, %29) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %307 = "tosa.transpose"(%306, %26) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %308 = "tosa.sub"(%307, %92) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %309 = "tosa.add"(%91, %103) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %310 = "tosa.rsqrt"(%309) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %311 = "tosa.reshape"(%310) {new_shape = [1, 512, 1, 1]} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %312 = "tosa.mul"(%308, %311) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %313 = "tosa.mul"(%312, %93) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %314 = "tosa.add"(%313, %0) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %315 = "tosa.transpose"(%6, %25) : (tensor<512x256x1x1xf32>, tensor<4xi32>) -> tensor<512x1x1x256xf32>
    %316 = "tosa.conv2d"(%292, %315, %29) {dilation = [1, 1], pad = [0, 0, 0, 0], stride = [2, 2]} : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %317 = "tosa.transpose"(%316, %26) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %318 = "tosa.sub"(%317, %95) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %319 = "tosa.add"(%94, %103) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %320 = "tosa.rsqrt"(%319) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %321 = "tosa.reshape"(%320) {new_shape = [1, 512, 1, 1]} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %322 = "tosa.mul"(%318, %321) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %323 = "tosa.mul"(%322, %96) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %324 = "tosa.add"(%323, %0) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %325 = "tosa.add"(%314, %324) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %326 = "tosa.clamp"(%325) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %327 = "tosa.transpose"(%326, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %328 = "tosa.transpose"(%5, %25) : (tensor<512x512x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x512xf32>
    %329 = "tosa.conv2d"(%327, %328, %29) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %330 = "tosa.transpose"(%329, %26) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %331 = "tosa.sub"(%330, %98) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %332 = "tosa.add"(%97, %103) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %333 = "tosa.rsqrt"(%332) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %334 = "tosa.reshape"(%333) {new_shape = [1, 512, 1, 1]} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %335 = "tosa.mul"(%331, %334) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %336 = "tosa.mul"(%335, %99) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %337 = "tosa.add"(%336, %100) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %338 = "tosa.clamp"(%337) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %339 = "tosa.transpose"(%338, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %340 = "tosa.transpose"(%4, %25) : (tensor<512x512x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x512xf32>
    %341 = "tosa.conv2d"(%339, %340, %29) {dilation = [1, 1], pad = [1, 1, 1, 1], stride = [1, 1]} : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %342 = "tosa.transpose"(%341, %26) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %343 = "tosa.sub"(%342, %102) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %344 = "tosa.add"(%101, %103) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %345 = "tosa.rsqrt"(%344) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %346 = "tosa.reshape"(%345) {new_shape = [1, 512, 1, 1]} : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %347 = "tosa.mul"(%343, %346) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %348 = "tosa.mul"(%347, %104) {shift = 0 : i32} : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %349 = "tosa.add"(%348, %105) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %350 = "tosa.add"(%349, %326) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %351 = "tosa.clamp"(%350) {max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64} : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %352 = "tosa.transpose"(%351, %25) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %353 = "tosa.avg_pool2d"(%352) {kernel = [7, 7], pad = [0, 0, 0, 0], stride = [1, 1]} : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
    %354 = "tosa.transpose"(%353, %26) : (tensor<1x1x1x512xf32>, tensor<4xi32>) -> tensor<1x512x1x1xf32>
    %355 = "tosa.transpose"(%3, %30) : (tensor<1000x512xf32>, tensor<2xi32>) -> tensor<512x1000xf32>
    %356 = "tosa.reshape"(%354) {new_shape = [1, 1, 512]} : (tensor<1x512x1x1xf32>) -> tensor<1x1x512xf32>
    %357 = "tosa.reshape"(%355) {new_shape = [1, 512, 1000]} : (tensor<512x1000xf32>) -> tensor<1x512x1000xf32>
    %358 = "tosa.matmul"(%356, %357) : (tensor<1x1x512xf32>, tensor<1x512x1000xf32>) -> tensor<1x1x1000xf32>
    %359 = "tosa.reshape"(%358) {new_shape = [1, 1000]} : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %360 = "tosa.add"(%359, %106) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %360 : tensor<1x1000xf32>
  }
}

