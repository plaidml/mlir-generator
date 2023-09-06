torch 
 module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: !torch.vtensor<[1,3,224,224],f32>) -> !torch.vtensor<[1,1000],f32> {
    %int0 = torch.constant.int 0
    %int1 = torch.constant.int 1
    %float1.000000e00 = torch.constant.float 1.000000e+00
    %int-1 = torch.constant.int -1
    %int7 = torch.constant.int 7
    %false = torch.constant.bool false
    %true = torch.constant.bool true
    %none = torch.constant.none
    %0 = torch.vtensor.literal(dense_resource<__elided__> : tensor<1000xf32>) : !torch.vtensor<[1000],f32>
    %1 = torch.vtensor.literal(dense_resource<__elided__> : tensor<1000x512xf32>) : !torch.vtensor<[1000,512],f32>
    %2 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %3 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %4 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %5 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %6 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512x512x3x3xf32>) : !torch.vtensor<[512,512,3,3],f32>
    %7 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %8 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %9 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %10 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %11 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512x512x3x3xf32>) : !torch.vtensor<[512,512,3,3],f32>
    %12 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %13 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %14 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %15 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512x256x1x1xf32>) : !torch.vtensor<[512,256,1,1],f32>
    %16 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %17 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %18 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %19 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %20 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512x512x3x3xf32>) : !torch.vtensor<[512,512,3,3],f32>
    %21 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %22 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %23 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %24 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512xf32>) : !torch.vtensor<[512],f32>
    %25 = torch.vtensor.literal(dense_resource<__elided__> : tensor<512x256x3x3xf32>) : !torch.vtensor<[512,256,3,3],f32>
    %26 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %27 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %28 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %29 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %30 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256x256x3x3xf32>) : !torch.vtensor<[256,256,3,3],f32>
    %31 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %32 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %33 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %34 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %35 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256x256x3x3xf32>) : !torch.vtensor<[256,256,3,3],f32>
    %36 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %37 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %38 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %39 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256x128x1x1xf32>) : !torch.vtensor<[256,128,1,1],f32>
    %40 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %41 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %42 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %43 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %44 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256x256x3x3xf32>) : !torch.vtensor<[256,256,3,3],f32>
    %45 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %46 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %47 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %48 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256xf32>) : !torch.vtensor<[256],f32>
    %49 = torch.vtensor.literal(dense_resource<__elided__> : tensor<256x128x3x3xf32>) : !torch.vtensor<[256,128,3,3],f32>
    %50 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %51 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %52 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %53 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %54 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128x128x3x3xf32>) : !torch.vtensor<[128,128,3,3],f32>
    %55 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %56 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %57 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %58 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %59 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128x128x3x3xf32>) : !torch.vtensor<[128,128,3,3],f32>
    %60 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %61 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %62 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %63 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128x64x1x1xf32>) : !torch.vtensor<[128,64,1,1],f32>
    %64 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %65 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %66 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %67 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %68 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128x128x3x3xf32>) : !torch.vtensor<[128,128,3,3],f32>
    %69 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %70 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %71 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %72 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128xf32>) : !torch.vtensor<[128],f32>
    %73 = torch.vtensor.literal(dense_resource<__elided__> : tensor<128x64x3x3xf32>) : !torch.vtensor<[128,64,3,3],f32>
    %74 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %75 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %76 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %77 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %78 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %79 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %80 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %81 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %82 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %83 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %84 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %85 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %86 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %87 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %88 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %89 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %90 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %91 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %92 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %93 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64x64x3x3xf32>) : !torch.vtensor<[64,64,3,3],f32>
    %94 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %95 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %96 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %97 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64xf32>) : !torch.vtensor<[64],f32>
    %98 = torch.vtensor.literal(dense_resource<__elided__> : tensor<64x3x7x7xf32>) : !torch.vtensor<[64,3,7,7],f32>
    %int3 = torch.constant.int 3
    %int2 = torch.constant.int 2
    %float1.000000e-05 = torch.constant.float 1.000000e-05
    %float1.000000e-01 = torch.constant.float 1.000000e-01
    %99 = torch.prim.ListConstruct %int2, %int2 : (!torch.int, !torch.int) -> !torch.list<int>
    %100 = torch.prim.ListConstruct %int3, %int3 : (!torch.int, !torch.int) -> !torch.list<int>
    %101 = torch.prim.ListConstruct %int1, %int1 : (!torch.int, !torch.int) -> !torch.list<int>
    %102 = torch.prim.ListConstruct  : () -> !torch.list<int>
    %103 = torch.aten.convolution %arg0, %98, %none, %99, %100, %101, %false, %102, %int1 : !torch.vtensor<[1,3,224,224],f32>, !torch.vtensor<[64,3,7,7],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,112,112],f32>
    %104 = torch.aten.batch_norm %103, %95, %94, %97, %96, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,112,112],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,112,112],f32>
    %105 = torch.aten.relu %104 : !torch.vtensor<[1,64,112,112],f32> -> !torch.vtensor<[1,64,112,112],f32>
    %106 = torch.aten.max_pool2d %105, %100, %99, %101, %101, %false : !torch.vtensor<[1,64,112,112],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %107 = torch.aten.convolution %106, %93, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %108 = torch.aten.batch_norm %107, %90, %89, %92, %91, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %109 = torch.aten.relu %108 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %110 = torch.aten.convolution %109, %88, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %111 = torch.aten.batch_norm %110, %85, %84, %87, %86, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %112 = torch.aten.add.Tensor %111, %106, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[1,64,56,56],f32>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %113 = torch.aten.relu %112 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %114 = torch.aten.convolution %113, %83, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %115 = torch.aten.batch_norm %114, %80, %79, %82, %81, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %116 = torch.aten.relu %115 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %117 = torch.aten.convolution %116, %78, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %118 = torch.aten.batch_norm %117, %75, %74, %77, %76, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.vtensor<[64],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,64,56,56],f32>
    %119 = torch.aten.add.Tensor %118, %113, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[1,64,56,56],f32>, !torch.int -> !torch.vtensor<[1,64,56,56],f32>
    %120 = torch.aten.relu %119 : !torch.vtensor<[1,64,56,56],f32> -> !torch.vtensor<[1,64,56,56],f32>
    %121 = torch.aten.convolution %120, %73, %none, %99, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[128,64,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %122 = torch.aten.batch_norm %121, %70, %69, %72, %71, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %123 = torch.aten.relu %122 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %124 = torch.aten.convolution %123, %68, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %125 = torch.aten.batch_norm %124, %65, %64, %67, %66, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %126 = torch.prim.ListConstruct %int0, %int0 : (!torch.int, !torch.int) -> !torch.list<int>
    %127 = torch.aten.convolution %120, %63, %none, %99, %126, %101, %false, %102, %int1 : !torch.vtensor<[1,64,56,56],f32>, !torch.vtensor<[128,64,1,1],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %128 = torch.aten.batch_norm %127, %60, %64, %62, %61, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %129 = torch.aten.add.Tensor %125, %128, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[1,128,28,28],f32>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %130 = torch.aten.relu %129 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %131 = torch.aten.convolution %130, %59, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %132 = torch.aten.batch_norm %131, %56, %55, %58, %57, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %133 = torch.aten.relu %132 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %134 = torch.aten.convolution %133, %54, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %135 = torch.aten.batch_norm %134, %51, %50, %53, %52, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.vtensor<[128],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,128,28,28],f32>
    %136 = torch.aten.add.Tensor %135, %130, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[1,128,28,28],f32>, !torch.int -> !torch.vtensor<[1,128,28,28],f32>
    %137 = torch.aten.relu %136 : !torch.vtensor<[1,128,28,28],f32> -> !torch.vtensor<[1,128,28,28],f32>
    %138 = torch.aten.convolution %137, %49, %none, %99, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[256,128,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %139 = torch.aten.batch_norm %138, %46, %45, %48, %47, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %140 = torch.aten.relu %139 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %141 = torch.aten.convolution %140, %44, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %142 = torch.aten.batch_norm %141, %41, %40, %43, %42, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %143 = torch.aten.convolution %137, %39, %none, %99, %126, %101, %false, %102, %int1 : !torch.vtensor<[1,128,28,28],f32>, !torch.vtensor<[256,128,1,1],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %144 = torch.aten.batch_norm %143, %36, %40, %38, %37, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %145 = torch.aten.add.Tensor %142, %144, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[1,256,14,14],f32>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %146 = torch.aten.relu %145 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %147 = torch.aten.convolution %146, %35, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %148 = torch.aten.batch_norm %147, %32, %31, %34, %33, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %149 = torch.aten.relu %148 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %150 = torch.aten.convolution %149, %30, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %151 = torch.aten.batch_norm %150, %27, %26, %29, %28, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.vtensor<[256],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,256,14,14],f32>
    %152 = torch.aten.add.Tensor %151, %146, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[1,256,14,14],f32>, !torch.int -> !torch.vtensor<[1,256,14,14],f32>
    %153 = torch.aten.relu %152 : !torch.vtensor<[1,256,14,14],f32> -> !torch.vtensor<[1,256,14,14],f32>
    %154 = torch.aten.convolution %153, %25, %none, %99, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[512,256,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %155 = torch.aten.batch_norm %154, %22, %21, %24, %23, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %156 = torch.aten.relu %155 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %157 = torch.aten.convolution %156, %20, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512,512,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %158 = torch.aten.batch_norm %157, %17, %16, %19, %18, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %159 = torch.aten.convolution %153, %15, %none, %99, %126, %101, %false, %102, %int1 : !torch.vtensor<[1,256,14,14],f32>, !torch.vtensor<[512,256,1,1],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %160 = torch.aten.batch_norm %159, %12, %16, %14, %13, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %161 = torch.aten.add.Tensor %158, %160, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[1,512,7,7],f32>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %162 = torch.aten.relu %161 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %163 = torch.aten.convolution %162, %11, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512,512,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %164 = torch.aten.batch_norm %163, %8, %7, %10, %9, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %165 = torch.aten.relu %164 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %166 = torch.aten.convolution %165, %6, %none, %101, %101, %101, %false, %102, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512,512,3,3],f32>, !torch.none, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.list<int>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %167 = torch.aten.batch_norm %166, %3, %2, %5, %4, %false, %float1.000000e-01, %float1.000000e-05, %true : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.vtensor<[512],f32>, !torch.bool, !torch.float, !torch.float, !torch.bool -> !torch.vtensor<[1,512,7,7],f32>
    %168 = torch.aten.add.Tensor %167, %162, %int1 : !torch.vtensor<[1,512,7,7],f32>, !torch.vtensor<[1,512,7,7],f32>, !torch.int -> !torch.vtensor<[1,512,7,7],f32>
    %169 = torch.aten.relu %168 : !torch.vtensor<[1,512,7,7],f32> -> !torch.vtensor<[1,512,7,7],f32>
    %170 = torch.prim.ListConstruct %int7, %int7 : (!torch.int, !torch.int) -> !torch.list<int>
    %171 = torch.aten.avg_pool2d %169, %170, %101, %126, %false, %true, %none : !torch.vtensor<[1,512,7,7],f32>, !torch.list<int>, !torch.list<int>, !torch.list<int>, !torch.bool, !torch.bool, !torch.none -> !torch.vtensor<[1,512,1,1],f32>
    %172 = torch.prim.ListConstruct %int1, %int-1 : (!torch.int, !torch.int) -> !torch.list<int>
    %173 = torch.aten.view %171, %172 : !torch.vtensor<[1,512,1,1],f32>, !torch.list<int> -> !torch.vtensor<[1,512],f32>
    %174 = torch.aten.transpose.int %1, %int0, %int1 : !torch.vtensor<[1000,512],f32>, !torch.int, !torch.int -> !torch.vtensor<[512,1000],f32>
    %175 = torch.aten.mm %173, %174 : !torch.vtensor<[1,512],f32>, !torch.vtensor<[512,1000],f32> -> !torch.vtensor<[1,1000],f32>
    %176 = torch.aten.add.Tensor %175, %0, %float1.000000e00 : !torch.vtensor<[1,1000],f32>, !torch.vtensor<[1000],f32>, !torch.float -> !torch.vtensor<[1,1000],f32>
    return %176 : !torch.vtensor<[1,1000],f32>
  }
}

linalg-on-tensors 
 #map = affine_map<(d0, d1, d2, d3) -> (d0, d1, d2, d3)>
#map1 = affine_map<(d0, d1, d2, d3) -> (d1)>
#map2 = affine_map<(d0, d1, d2, d3) -> (0, d1, d2, d3)>
#map3 = affine_map<(d0, d1) -> (d0, d1)>
#map4 = affine_map<(d0, d1) -> (d1, d0)>
#map5 = affine_map<(d0, d1) -> (0, d1)>
#map6 = affine_map<(d0, d1) -> (d1)>
module attributes {torch.debug_module_name = "ResNet"} {
  ml_program.global private mutable @global_seed(dense<0> : tensor<i64>) : tensor<i64>
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %false = arith.constant false
    %cst = arith.constant dense_resource<__elided__> : tensor<1000xf32>
    %cst_0 = arith.constant dense_resource<__elided__> : tensor<1000x512xf32>
    %cst_1 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_2 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_3 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_4 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_5 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_6 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_7 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_8 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_9 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_10 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_11 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_12 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_13 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_14 = arith.constant dense_resource<__elided__> : tensor<512x256x1x1xf32>
    %cst_15 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_16 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_17 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_18 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_19 = arith.constant dense_resource<__elided__> : tensor<512x512x3x3xf32>
    %cst_20 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_21 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_22 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_23 = arith.constant dense_resource<__elided__> : tensor<512xf32>
    %cst_24 = arith.constant dense_resource<__elided__> : tensor<512x256x3x3xf32>
    %cst_25 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_26 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_27 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_28 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_29 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_30 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_31 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_32 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_33 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_34 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_35 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_36 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_37 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_38 = arith.constant dense_resource<__elided__> : tensor<256x128x1x1xf32>
    %cst_39 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_40 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_41 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_42 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_43 = arith.constant dense_resource<__elided__> : tensor<256x256x3x3xf32>
    %cst_44 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_45 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_46 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_47 = arith.constant dense_resource<__elided__> : tensor<256xf32>
    %cst_48 = arith.constant dense_resource<__elided__> : tensor<256x128x3x3xf32>
    %cst_49 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_50 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_51 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_52 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_53 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_54 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_55 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_56 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_57 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_58 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_59 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_60 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_61 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_62 = arith.constant dense_resource<__elided__> : tensor<128x64x1x1xf32>
    %cst_63 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_64 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_65 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_66 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_67 = arith.constant dense_resource<__elided__> : tensor<128x128x3x3xf32>
    %cst_68 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_69 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_70 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_71 = arith.constant dense_resource<__elided__> : tensor<128xf32>
    %cst_72 = arith.constant dense_resource<__elided__> : tensor<128x64x3x3xf32>
    %cst_73 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_74 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_75 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_76 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_77 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_78 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_79 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_80 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_81 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_82 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_83 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_84 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_85 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_86 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_87 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_88 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_89 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_90 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_91 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_92 = arith.constant dense_resource<__elided__> : tensor<64x64x3x3xf32>
    %cst_93 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_94 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_95 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_96 = arith.constant dense_resource<__elided__> : tensor<64xf32>
    %cst_97 = arith.constant dense_resource<__elided__> : tensor<64x3x7x7xf32>
    %cst_98 = arith.constant 0.000000e+00 : f32
    %cst_99 = arith.constant 0xFF800000 : f32
    %cst_100 = arith.constant 1.000000e-05 : f64
    %c3 = arith.constant 3 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %cst_101 = arith.constant 4.900000e+01 : f32
    %padded = tensor.pad %arg0 low[0, 0, 3, 3] high[0, 0, 3, 3] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x3x224x224xf32> to tensor<1x3x230x230xf32>
    %0 = tensor.empty() : tensor<1x64x112x112xf32>
    %1 = linalg.fill ins(%cst_98 : f32) outs(%0 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %2 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded, %cst_97 : tensor<1x3x230x230xf32>, tensor<64x3x7x7xf32>) outs(%1 : tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %3 = arith.cmpi eq, %false, %false : i1
    cf.assert %3, "training is not supported for now"
    %4 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%2, %cst_94, %cst_93, %cst_96, %cst_95 : tensor<1x64x112x112xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%2 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x112x112xf32>
    %5 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%4 : tensor<1x64x112x112xf32>) outs(%0 : tensor<1x64x112x112xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x112x112xf32>
    %padded_102 = tensor.pad %5 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_99 : f32
    } : tensor<1x64x112x112xf32> to tensor<1x64x114x114xf32>
    %6 = tensor.empty() : tensor<1x64x56x56xf32>
    %7 = linalg.fill ins(%cst_99 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %8 = tensor.empty() : tensor<3x3xf32>
    %9 = linalg.pooling_nchw_max {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_102, %8 : tensor<1x64x114x114xf32>, tensor<3x3xf32>) outs(%7 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %padded_103 = tensor.pad %9 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %10 = linalg.fill ins(%cst_98 : f32) outs(%6 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %11 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_103, %cst_92 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %12 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%11, %cst_89, %cst_88, %cst_91, %cst_90 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%11 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x56x56xf32>
    %13 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%12 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_104 = tensor.pad %13 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %14 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_104, %cst_87 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %15 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%14, %cst_84, %cst_83, %cst_86, %cst_85 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%14 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x56x56xf32>
    %16 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%15, %9 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x64x56x56xf32>
    %17 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%16 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_105 = tensor.pad %17 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %18 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_105, %cst_82 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %19 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%18, %cst_79, %cst_78, %cst_81, %cst_80 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%18 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x56x56xf32>
    %20 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%19 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_106 = tensor.pad %20 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %21 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_106, %cst_77 : tensor<1x64x58x58xf32>, tensor<64x64x3x3xf32>) outs(%10 : tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    cf.assert %3, "training is not supported for now"
    %22 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%21, %cst_74, %cst_73, %cst_76, %cst_75 : tensor<1x64x56x56xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>, tensor<64xf32>) outs(%21 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x64x56x56xf32>
    %23 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%22, %17 : tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x64x56x56xf32>
    %24 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%23 : tensor<1x64x56x56xf32>) outs(%6 : tensor<1x64x56x56xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x64x56x56xf32>
    %padded_107 = tensor.pad %24 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x64x56x56xf32> to tensor<1x64x58x58xf32>
    %25 = tensor.empty() : tensor<1x128x28x28xf32>
    %26 = linalg.fill ins(%cst_98 : f32) outs(%25 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %27 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_107, %cst_72 : tensor<1x64x58x58xf32>, tensor<128x64x3x3xf32>) outs(%26 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %28 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%27, %cst_69, %cst_68, %cst_71, %cst_70 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%27 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x28x28xf32>
    %29 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%28 : tensor<1x128x28x28xf32>) outs(%25 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_108 = tensor.pad %29 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %30 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_108, %cst_67 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %31 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%30, %cst_64, %cst_63, %cst_66, %cst_65 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%30 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x28x28xf32>
    %32 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%24, %cst_62 : tensor<1x64x56x56xf32>, tensor<128x64x1x1xf32>) outs(%26 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %33 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%32, %cst_59, %cst_63, %cst_61, %cst_60 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%32 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x28x28xf32>
    %34 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%31, %33 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%25 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x128x28x28xf32>
    %35 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%34 : tensor<1x128x28x28xf32>) outs(%25 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_109 = tensor.pad %35 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %36 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_109, %cst_58 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %37 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%36, %cst_55, %cst_54, %cst_57, %cst_56 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%36 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x28x28xf32>
    %38 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%37 : tensor<1x128x28x28xf32>) outs(%25 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_110 = tensor.pad %38 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %39 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_110, %cst_53 : tensor<1x128x30x30xf32>, tensor<128x128x3x3xf32>) outs(%26 : tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    cf.assert %3, "training is not supported for now"
    %40 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%39, %cst_50, %cst_49, %cst_52, %cst_51 : tensor<1x128x28x28xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>, tensor<128xf32>) outs(%39 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x128x28x28xf32>
    %41 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%40, %35 : tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) outs(%25 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x128x28x28xf32>
    %42 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%41 : tensor<1x128x28x28xf32>) outs(%25 : tensor<1x128x28x28xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x128x28x28xf32>
    %padded_111 = tensor.pad %42 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x128x28x28xf32> to tensor<1x128x30x30xf32>
    %43 = tensor.empty() : tensor<1x256x14x14xf32>
    %44 = linalg.fill ins(%cst_98 : f32) outs(%43 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %45 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_111, %cst_48 : tensor<1x128x30x30xf32>, tensor<256x128x3x3xf32>) outs(%44 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %46 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%45, %cst_45, %cst_44, %cst_47, %cst_46 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%45 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x14x14xf32>
    %47 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%46 : tensor<1x256x14x14xf32>) outs(%43 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_112 = tensor.pad %47 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %48 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_112, %cst_43 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %49 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%48, %cst_40, %cst_39, %cst_42, %cst_41 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%48 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x14x14xf32>
    %50 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%42, %cst_38 : tensor<1x128x28x28xf32>, tensor<256x128x1x1xf32>) outs(%44 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %51 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%50, %cst_35, %cst_39, %cst_37, %cst_36 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%50 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x14x14xf32>
    %52 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%49, %51 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%43 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x256x14x14xf32>
    %53 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%52 : tensor<1x256x14x14xf32>) outs(%43 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_113 = tensor.pad %53 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %54 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_113, %cst_34 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %55 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%54, %cst_31, %cst_30, %cst_33, %cst_32 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%54 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x14x14xf32>
    %56 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%55 : tensor<1x256x14x14xf32>) outs(%43 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_114 = tensor.pad %56 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %57 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_114, %cst_29 : tensor<1x256x16x16xf32>, tensor<256x256x3x3xf32>) outs(%44 : tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    cf.assert %3, "training is not supported for now"
    %58 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%57, %cst_26, %cst_25, %cst_28, %cst_27 : tensor<1x256x14x14xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>, tensor<256xf32>) outs(%57 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x256x14x14xf32>
    %59 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%58, %53 : tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) outs(%43 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x256x14x14xf32>
    %60 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%59 : tensor<1x256x14x14xf32>) outs(%43 : tensor<1x256x14x14xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x256x14x14xf32>
    %padded_115 = tensor.pad %60 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x256x14x14xf32> to tensor<1x256x16x16xf32>
    %61 = tensor.empty() : tensor<1x512x7x7xf32>
    %62 = linalg.fill ins(%cst_98 : f32) outs(%61 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %63 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%padded_115, %cst_24 : tensor<1x256x16x16xf32>, tensor<512x256x3x3xf32>) outs(%62 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %64 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%63, %cst_21, %cst_20, %cst_23, %cst_22 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%63 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x7x7xf32>
    %65 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%64 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_116 = tensor.pad %65 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %66 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_116, %cst_19 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %67 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%66, %cst_16, %cst_15, %cst_18, %cst_17 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%66 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x7x7xf32>
    %68 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<2> : vector<2xi64>} ins(%60, %cst_14 : tensor<1x256x14x14xf32>, tensor<512x256x1x1xf32>) outs(%62 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %69 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%68, %cst_11, %cst_15, %cst_13, %cst_12 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%68 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x7x7xf32>
    %70 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%67, %69 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%61 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x512x7x7xf32>
    %71 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%70 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_117 = tensor.pad %71 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %72 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_117, %cst_10 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %73 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%72, %cst_7, %cst_6, %cst_9, %cst_8 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%72 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x7x7xf32>
    %74 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%73 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x7x7xf32>
    %padded_118 = tensor.pad %74 low[0, 0, 1, 1] high[0, 0, 1, 1] {
    ^bb0(%arg1: index, %arg2: index, %arg3: index, %arg4: index):
      tensor.yield %cst_98 : f32
    } : tensor<1x512x7x7xf32> to tensor<1x512x9x9xf32>
    %75 = linalg.conv_2d_nchw_fchw {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%padded_118, %cst_5 : tensor<1x512x9x9xf32>, tensor<512x512x3x3xf32>) outs(%62 : tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    cf.assert %3, "training is not supported for now"
    %76 = linalg.generic {indexing_maps = [#map, #map1, #map1, #map1, #map1, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%75, %cst_2, %cst_1, %cst_4, %cst_3 : tensor<1x512x7x7xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>, tensor<512xf32>) outs(%75 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %in_120: f32, %in_121: f32, %in_122: f32, %out: f32):
      %90 = arith.truncf %cst_100 : f64 to f32
      %91 = arith.addf %in_122, %90 : f32
      %92 = math.rsqrt %91 : f32
      %93 = arith.subf %in, %in_121 : f32
      %94 = arith.mulf %93, %92 : f32
      %95 = arith.mulf %94, %in_119 : f32
      %96 = arith.addf %95, %in_120 : f32
      linalg.yield %96 : f32
    } -> tensor<1x512x7x7xf32>
    %77 = linalg.generic {indexing_maps = [#map2, #map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%76, %71 : tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) outs(%61 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x512x7x7xf32>
    %78 = linalg.generic {indexing_maps = [#map2, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%77 : tensor<1x512x7x7xf32>) outs(%61 : tensor<1x512x7x7xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.cmpf ugt, %in, %cst_98 : f32
      %91 = arith.select %90, %in, %cst_98 : f32
      linalg.yield %91 : f32
    } -> tensor<1x512x7x7xf32>
    %79 = tensor.empty() : tensor<1x512x1x1xf32>
    %80 = linalg.fill ins(%cst_98 : f32) outs(%79 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %81 = tensor.empty() : tensor<7x7xf32>
    %82 = linalg.pooling_nchw_sum {dilations = dense<1> : vector<2xi64>, strides = dense<1> : vector<2xi64>} ins(%78, %81 : tensor<1x512x7x7xf32>, tensor<7x7xf32>) outs(%80 : tensor<1x512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %83 = linalg.generic {indexing_maps = [#map, #map], iterator_types = ["parallel", "parallel", "parallel", "parallel"]} ins(%82 : tensor<1x512x1x1xf32>) outs(%79 : tensor<1x512x1x1xf32>) {
    ^bb0(%in: f32, %out: f32):
      %90 = arith.divf %in, %cst_101 : f32
      linalg.yield %90 : f32
    } -> tensor<1x512x1x1xf32>
    %collapsed = tensor.collapse_shape %83 [[0], [1, 2, 3]] : tensor<1x512x1x1xf32> into tensor<1x512xf32>
    %84 = tensor.empty() : tensor<512x1000xf32>
    %85 = linalg.generic {indexing_maps = [#map3, #map4], iterator_types = ["parallel", "parallel"]} ins(%cst_0 : tensor<1000x512xf32>) outs(%84 : tensor<512x1000xf32>) {
    ^bb0(%in: f32, %out: f32):
      linalg.yield %in : f32
    } -> tensor<512x1000xf32>
    %86 = tensor.empty() : tensor<1x1000xf32>
    %87 = linalg.fill ins(%cst_98 : f32) outs(%86 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %88 = linalg.matmul ins(%collapsed, %85 : tensor<1x512xf32>, tensor<512x1000xf32>) outs(%87 : tensor<1x1000xf32>) -> tensor<1x1000xf32>
    %89 = linalg.generic {indexing_maps = [#map5, #map6, #map3], iterator_types = ["parallel", "parallel"]} ins(%88, %cst : tensor<1x1000xf32>, tensor<1000xf32>) outs(%86 : tensor<1x1000xf32>) {
    ^bb0(%in: f32, %in_119: f32, %out: f32):
      %90 = arith.addf %in, %in_119 : f32
      linalg.yield %90 : f32
    } -> tensor<1x1000xf32>
    return %89 : tensor<1x1000xf32>
  }
}

tosa 
 module attributes {torch.debug_module_name = "ResNet"} {
  func.func @forward(%arg0: tensor<1x3x224x224xf32>) -> tensor<1x1000xf32> {
    %0 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %1 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %2 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %3 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1000x512xf32>}> : () -> tensor<1000x512xf32>
    %4 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x512x3x3xf32>}> : () -> tensor<512x512x3x3xf32>
    %5 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x512x3x3xf32>}> : () -> tensor<512x512x3x3xf32>
    %6 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x512x3x3xf32>}> : () -> tensor<512x512x3x3xf32>
    %7 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x256x3x3xf32>}> : () -> tensor<512x256x3x3xf32>
    %8 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x256x3x3xf32>}> : () -> tensor<256x256x3x3xf32>
    %9 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x256x3x3xf32>}> : () -> tensor<256x256x3x3xf32>
    %10 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x256x3x3xf32>}> : () -> tensor<256x256x3x3xf32>
    %11 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x128x3x3xf32>}> : () -> tensor<256x128x3x3xf32>
    %12 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x128x3x3xf32>}> : () -> tensor<128x128x3x3xf32>
    %13 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x128x3x3xf32>}> : () -> tensor<128x128x3x3xf32>
    %14 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x128x3x3xf32>}> : () -> tensor<128x128x3x3xf32>
    %15 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x64x3x3xf32>}> : () -> tensor<128x64x3x3xf32>
    %16 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x64x3x3xf32>}> : () -> tensor<64x64x3x3xf32>
    %17 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x64x3x3xf32>}> : () -> tensor<64x64x3x3xf32>
    %18 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x64x3x3xf32>}> : () -> tensor<64x64x3x3xf32>
    %19 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x64x3x3xf32>}> : () -> tensor<64x64x3x3xf32>
    %20 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x3x7x7xf32>}> : () -> tensor<64x3x7x7xf32>
    %21 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<64xf32>}> : () -> tensor<64xf32>
    %22 = "tosa.const"() <{value = dense<[0, 2, 3, 1]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %23 = "tosa.const"() <{value = dense<[0, 3, 1, 2]> : tensor<4xi32>}> : () -> tensor<4xi32>
    %24 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<128xf32>}> : () -> tensor<128xf32>
    %25 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<256xf32>}> : () -> tensor<256xf32>
    %26 = "tosa.const"() <{value = dense<0.000000e+00> : tensor<512xf32>}> : () -> tensor<512xf32>
    %27 = "tosa.const"() <{value = dense<[1, 0]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %28 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x1000xf32>}> : () -> tensor<1x1000xf32>
    %29 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x1x1xf32>}> : () -> tensor<512x1x1xf32>
    %30 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x1x1xf32>}> : () -> tensor<512x1x1xf32>
    %31 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x1x1xf32>}> : () -> tensor<512x1x1xf32>
    %32 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x1x1xf32>}> : () -> tensor<512x1x1xf32>
    %33 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x1x1xf32>}> : () -> tensor<512x1x1xf32>
    %34 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x1x1xf32>}> : () -> tensor<256x1x1xf32>
    %35 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x1x1xf32>}> : () -> tensor<256x1x1xf32>
    %36 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x1x1xf32>}> : () -> tensor<256x1x1xf32>
    %37 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x1x1xf32>}> : () -> tensor<256x1x1xf32>
    %38 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x1x1xf32>}> : () -> tensor<256x1x1xf32>
    %39 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x1x1xf32>}> : () -> tensor<128x1x1xf32>
    %40 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x1x1xf32>}> : () -> tensor<128x1x1xf32>
    %41 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x1x1xf32>}> : () -> tensor<128x1x1xf32>
    %42 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x1x1xf32>}> : () -> tensor<128x1x1xf32>
    %43 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x1x1xf32>}> : () -> tensor<128x1x1xf32>
    %44 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x1x1xf32>}> : () -> tensor<64x1x1xf32>
    %45 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x1x1xf32>}> : () -> tensor<64x1x1xf32>
    %46 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x1x1xf32>}> : () -> tensor<64x1x1xf32>
    %47 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x1x1xf32>}> : () -> tensor<64x1x1xf32>
    %48 = "tosa.const"() <{value = dense<9.99999974E-6> : tensor<1x1x1xf32>}> : () -> tensor<1x1x1xf32>
    %49 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<64x1x1xf32>}> : () -> tensor<64x1x1xf32>
    %50 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %51 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %52 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %53 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %54 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %55 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %56 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %57 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %58 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %59 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %60 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %61 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %62 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x512x1x1xf32>}> : () -> tensor<1x512x1x1xf32>
    %63 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %64 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %65 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %66 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %67 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %68 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %69 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %70 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %71 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %72 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %73 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %74 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %75 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x256x1x1xf32>}> : () -> tensor<1x256x1x1xf32>
    %76 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %77 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %78 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %79 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %80 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %81 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %82 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %83 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %84 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %85 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %86 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %87 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %88 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x128x1x1xf32>}> : () -> tensor<1x128x1x1xf32>
    %89 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %90 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %91 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %92 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %93 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %94 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %95 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %96 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %97 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %98 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %99 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %100 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %101 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %102 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %103 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<1x64x1x1xf32>}> : () -> tensor<1x64x1x1xf32>
    %104 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<128x1x1x64xf32>}> : () -> tensor<128x1x1x64xf32>
    %105 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<256x1x1x128xf32>}> : () -> tensor<256x1x1x128xf32>
    %106 = "tosa.const"() <{value = dense_resource<__elided__> : tensor<512x1x1x256xf32>}> : () -> tensor<512x1x1x256xf32>
    %107 = "tosa.transpose"(%arg0, %22) : (tensor<1x3x224x224xf32>, tensor<4xi32>) -> tensor<1x224x224x3xf32>
    %108 = "tosa.transpose"(%20, %22) : (tensor<64x3x7x7xf32>, tensor<4xi32>) -> tensor<64x7x7x3xf32>
    %109 = "tosa.conv2d"(%107, %108, %21) <{dilation = array<i64: 1, 1>, pad = array<i64: 3, 3, 3, 3>, stride = array<i64: 2, 2>}> : (tensor<1x224x224x3xf32>, tensor<64x7x7x3xf32>, tensor<64xf32>) -> tensor<1x112x112x64xf32>
    %110 = "tosa.transpose"(%109, %23) : (tensor<1x112x112x64xf32>, tensor<4xi32>) -> tensor<1x64x112x112xf32>
    %111 = "tosa.sub"(%110, %103) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %112 = "tosa.add"(%49, %48) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %113 = "tosa.rsqrt"(%112) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %114 = "tosa.reshape"(%113) <{new_shape = array<i64: 1, 64, 1, 1>}> : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %115 = "tosa.mul"(%111, %114) <{shift = 0 : i32}> : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %116 = "tosa.mul"(%115, %102) <{shift = 0 : i32}> : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %117 = "tosa.add"(%116, %101) : (tensor<1x64x112x112xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x112x112xf32>
    %118 = "tosa.clamp"(%117) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x64x112x112xf32>) -> tensor<1x64x112x112xf32>
    %119 = "tosa.transpose"(%118, %22) : (tensor<1x64x112x112xf32>, tensor<4xi32>) -> tensor<1x112x112x64xf32>
    %120 = "tosa.max_pool2d"(%119) <{kernel = array<i64: 3, 3>, pad = array<i64: 1, 0, 1, 0>, stride = array<i64: 2, 2>}> : (tensor<1x112x112x64xf32>) -> tensor<1x56x56x64xf32>
    %121 = "tosa.transpose"(%120, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %122 = "tosa.transpose"(%19, %22) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %123 = "tosa.conv2d"(%120, %122, %21) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %124 = "tosa.transpose"(%123, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %125 = "tosa.sub"(%124, %100) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %126 = "tosa.add"(%47, %48) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %127 = "tosa.rsqrt"(%126) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %128 = "tosa.reshape"(%127) <{new_shape = array<i64: 1, 64, 1, 1>}> : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %129 = "tosa.mul"(%125, %128) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %130 = "tosa.mul"(%129, %99) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %131 = "tosa.add"(%130, %98) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %132 = "tosa.clamp"(%131) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %133 = "tosa.transpose"(%132, %22) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %134 = "tosa.transpose"(%18, %22) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %135 = "tosa.conv2d"(%133, %134, %21) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %136 = "tosa.transpose"(%135, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %137 = "tosa.sub"(%136, %97) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %138 = "tosa.add"(%46, %48) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %139 = "tosa.rsqrt"(%138) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %140 = "tosa.reshape"(%139) <{new_shape = array<i64: 1, 64, 1, 1>}> : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %141 = "tosa.mul"(%137, %140) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %142 = "tosa.mul"(%141, %96) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %143 = "tosa.add"(%142, %95) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %144 = "tosa.add"(%143, %121) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %145 = "tosa.clamp"(%144) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %146 = "tosa.transpose"(%145, %22) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %147 = "tosa.transpose"(%17, %22) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %148 = "tosa.conv2d"(%146, %147, %21) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %149 = "tosa.transpose"(%148, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %150 = "tosa.sub"(%149, %94) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %151 = "tosa.add"(%45, %48) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %152 = "tosa.rsqrt"(%151) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %153 = "tosa.reshape"(%152) <{new_shape = array<i64: 1, 64, 1, 1>}> : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %154 = "tosa.mul"(%150, %153) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %155 = "tosa.mul"(%154, %93) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %156 = "tosa.add"(%155, %92) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %157 = "tosa.clamp"(%156) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %158 = "tosa.transpose"(%157, %22) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %159 = "tosa.transpose"(%16, %22) : (tensor<64x64x3x3xf32>, tensor<4xi32>) -> tensor<64x3x3x64xf32>
    %160 = "tosa.conv2d"(%158, %159, %21) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x56x56x64xf32>, tensor<64x3x3x64xf32>, tensor<64xf32>) -> tensor<1x56x56x64xf32>
    %161 = "tosa.transpose"(%160, %23) : (tensor<1x56x56x64xf32>, tensor<4xi32>) -> tensor<1x64x56x56xf32>
    %162 = "tosa.sub"(%161, %91) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %163 = "tosa.add"(%44, %48) : (tensor<64x1x1xf32>, tensor<1x1x1xf32>) -> tensor<64x1x1xf32>
    %164 = "tosa.rsqrt"(%163) : (tensor<64x1x1xf32>) -> tensor<64x1x1xf32>
    %165 = "tosa.reshape"(%164) <{new_shape = array<i64: 1, 64, 1, 1>}> : (tensor<64x1x1xf32>) -> tensor<1x64x1x1xf32>
    %166 = "tosa.mul"(%162, %165) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %167 = "tosa.mul"(%166, %90) <{shift = 0 : i32}> : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %168 = "tosa.add"(%167, %89) : (tensor<1x64x56x56xf32>, tensor<1x64x1x1xf32>) -> tensor<1x64x56x56xf32>
    %169 = "tosa.add"(%168, %145) : (tensor<1x64x56x56xf32>, tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %170 = "tosa.clamp"(%169) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x64x56x56xf32>) -> tensor<1x64x56x56xf32>
    %171 = "tosa.transpose"(%170, %22) : (tensor<1x64x56x56xf32>, tensor<4xi32>) -> tensor<1x56x56x64xf32>
    %172 = "tosa.transpose"(%15, %22) : (tensor<128x64x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x64xf32>
    %173 = "tosa.conv2d"(%171, %172, %24) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>}> : (tensor<1x56x56x64xf32>, tensor<128x3x3x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %174 = "tosa.transpose"(%173, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %175 = "tosa.sub"(%174, %88) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %176 = "tosa.add"(%43, %48) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %177 = "tosa.rsqrt"(%176) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %178 = "tosa.reshape"(%177) <{new_shape = array<i64: 1, 128, 1, 1>}> : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %179 = "tosa.mul"(%175, %178) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %180 = "tosa.mul"(%179, %87) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %181 = "tosa.add"(%180, %86) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %182 = "tosa.clamp"(%181) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %183 = "tosa.transpose"(%182, %22) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %184 = "tosa.transpose"(%14, %22) : (tensor<128x128x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x128xf32>
    %185 = "tosa.conv2d"(%183, %184, %24) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %186 = "tosa.transpose"(%185, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %187 = "tosa.sub"(%186, %85) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %188 = "tosa.add"(%42, %48) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %189 = "tosa.rsqrt"(%188) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %190 = "tosa.reshape"(%189) <{new_shape = array<i64: 1, 128, 1, 1>}> : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %191 = "tosa.mul"(%187, %190) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %192 = "tosa.mul"(%191, %84) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %193 = "tosa.add"(%192, %2) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %194 = "tosa.conv2d"(%171, %104, %24) <{dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>}> : (tensor<1x56x56x64xf32>, tensor<128x1x1x64xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %195 = "tosa.transpose"(%194, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %196 = "tosa.sub"(%195, %83) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %197 = "tosa.add"(%41, %48) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %198 = "tosa.rsqrt"(%197) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %199 = "tosa.reshape"(%198) <{new_shape = array<i64: 1, 128, 1, 1>}> : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %200 = "tosa.mul"(%196, %199) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %201 = "tosa.mul"(%200, %82) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %202 = "tosa.add"(%201, %2) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %203 = "tosa.add"(%193, %202) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %204 = "tosa.clamp"(%203) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %205 = "tosa.transpose"(%204, %22) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %206 = "tosa.transpose"(%13, %22) : (tensor<128x128x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x128xf32>
    %207 = "tosa.conv2d"(%205, %206, %24) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %208 = "tosa.transpose"(%207, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %209 = "tosa.sub"(%208, %81) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %210 = "tosa.add"(%40, %48) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %211 = "tosa.rsqrt"(%210) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %212 = "tosa.reshape"(%211) <{new_shape = array<i64: 1, 128, 1, 1>}> : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %213 = "tosa.mul"(%209, %212) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %214 = "tosa.mul"(%213, %80) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %215 = "tosa.add"(%214, %79) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %216 = "tosa.clamp"(%215) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %217 = "tosa.transpose"(%216, %22) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %218 = "tosa.transpose"(%12, %22) : (tensor<128x128x3x3xf32>, tensor<4xi32>) -> tensor<128x3x3x128xf32>
    %219 = "tosa.conv2d"(%217, %218, %24) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x28x28x128xf32>, tensor<128x3x3x128xf32>, tensor<128xf32>) -> tensor<1x28x28x128xf32>
    %220 = "tosa.transpose"(%219, %23) : (tensor<1x28x28x128xf32>, tensor<4xi32>) -> tensor<1x128x28x28xf32>
    %221 = "tosa.sub"(%220, %78) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %222 = "tosa.add"(%39, %48) : (tensor<128x1x1xf32>, tensor<1x1x1xf32>) -> tensor<128x1x1xf32>
    %223 = "tosa.rsqrt"(%222) : (tensor<128x1x1xf32>) -> tensor<128x1x1xf32>
    %224 = "tosa.reshape"(%223) <{new_shape = array<i64: 1, 128, 1, 1>}> : (tensor<128x1x1xf32>) -> tensor<1x128x1x1xf32>
    %225 = "tosa.mul"(%221, %224) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %226 = "tosa.mul"(%225, %77) <{shift = 0 : i32}> : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %227 = "tosa.add"(%226, %76) : (tensor<1x128x28x28xf32>, tensor<1x128x1x1xf32>) -> tensor<1x128x28x28xf32>
    %228 = "tosa.add"(%227, %204) : (tensor<1x128x28x28xf32>, tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %229 = "tosa.clamp"(%228) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x128x28x28xf32>) -> tensor<1x128x28x28xf32>
    %230 = "tosa.transpose"(%229, %22) : (tensor<1x128x28x28xf32>, tensor<4xi32>) -> tensor<1x28x28x128xf32>
    %231 = "tosa.transpose"(%11, %22) : (tensor<256x128x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x128xf32>
    %232 = "tosa.conv2d"(%230, %231, %25) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>}> : (tensor<1x28x28x128xf32>, tensor<256x3x3x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %233 = "tosa.transpose"(%232, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %234 = "tosa.sub"(%233, %75) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %235 = "tosa.add"(%38, %48) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %236 = "tosa.rsqrt"(%235) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %237 = "tosa.reshape"(%236) <{new_shape = array<i64: 1, 256, 1, 1>}> : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %238 = "tosa.mul"(%234, %237) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %239 = "tosa.mul"(%238, %74) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %240 = "tosa.add"(%239, %73) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %241 = "tosa.clamp"(%240) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %242 = "tosa.transpose"(%241, %22) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %243 = "tosa.transpose"(%10, %22) : (tensor<256x256x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x256xf32>
    %244 = "tosa.conv2d"(%242, %243, %25) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %245 = "tosa.transpose"(%244, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %246 = "tosa.sub"(%245, %72) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %247 = "tosa.add"(%37, %48) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %248 = "tosa.rsqrt"(%247) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %249 = "tosa.reshape"(%248) <{new_shape = array<i64: 1, 256, 1, 1>}> : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %250 = "tosa.mul"(%246, %249) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %251 = "tosa.mul"(%250, %71) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %252 = "tosa.add"(%251, %1) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %253 = "tosa.conv2d"(%230, %105, %25) <{dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>}> : (tensor<1x28x28x128xf32>, tensor<256x1x1x128xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %254 = "tosa.transpose"(%253, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %255 = "tosa.sub"(%254, %70) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %256 = "tosa.add"(%36, %48) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %257 = "tosa.rsqrt"(%256) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %258 = "tosa.reshape"(%257) <{new_shape = array<i64: 1, 256, 1, 1>}> : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %259 = "tosa.mul"(%255, %258) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %260 = "tosa.mul"(%259, %69) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %261 = "tosa.add"(%260, %1) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %262 = "tosa.add"(%252, %261) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %263 = "tosa.clamp"(%262) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %264 = "tosa.transpose"(%263, %22) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %265 = "tosa.transpose"(%9, %22) : (tensor<256x256x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x256xf32>
    %266 = "tosa.conv2d"(%264, %265, %25) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %267 = "tosa.transpose"(%266, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %268 = "tosa.sub"(%267, %68) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %269 = "tosa.add"(%35, %48) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %270 = "tosa.rsqrt"(%269) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %271 = "tosa.reshape"(%270) <{new_shape = array<i64: 1, 256, 1, 1>}> : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %272 = "tosa.mul"(%268, %271) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %273 = "tosa.mul"(%272, %67) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %274 = "tosa.add"(%273, %66) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %275 = "tosa.clamp"(%274) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %276 = "tosa.transpose"(%275, %22) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %277 = "tosa.transpose"(%8, %22) : (tensor<256x256x3x3xf32>, tensor<4xi32>) -> tensor<256x3x3x256xf32>
    %278 = "tosa.conv2d"(%276, %277, %25) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x14x14x256xf32>, tensor<256x3x3x256xf32>, tensor<256xf32>) -> tensor<1x14x14x256xf32>
    %279 = "tosa.transpose"(%278, %23) : (tensor<1x14x14x256xf32>, tensor<4xi32>) -> tensor<1x256x14x14xf32>
    %280 = "tosa.sub"(%279, %65) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %281 = "tosa.add"(%34, %48) : (tensor<256x1x1xf32>, tensor<1x1x1xf32>) -> tensor<256x1x1xf32>
    %282 = "tosa.rsqrt"(%281) : (tensor<256x1x1xf32>) -> tensor<256x1x1xf32>
    %283 = "tosa.reshape"(%282) <{new_shape = array<i64: 1, 256, 1, 1>}> : (tensor<256x1x1xf32>) -> tensor<1x256x1x1xf32>
    %284 = "tosa.mul"(%280, %283) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %285 = "tosa.mul"(%284, %64) <{shift = 0 : i32}> : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %286 = "tosa.add"(%285, %63) : (tensor<1x256x14x14xf32>, tensor<1x256x1x1xf32>) -> tensor<1x256x14x14xf32>
    %287 = "tosa.add"(%286, %263) : (tensor<1x256x14x14xf32>, tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %288 = "tosa.clamp"(%287) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x256x14x14xf32>) -> tensor<1x256x14x14xf32>
    %289 = "tosa.transpose"(%288, %22) : (tensor<1x256x14x14xf32>, tensor<4xi32>) -> tensor<1x14x14x256xf32>
    %290 = "tosa.transpose"(%7, %22) : (tensor<512x256x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x256xf32>
    %291 = "tosa.conv2d"(%289, %290, %26) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 2, 2>}> : (tensor<1x14x14x256xf32>, tensor<512x3x3x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %292 = "tosa.transpose"(%291, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %293 = "tosa.sub"(%292, %62) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %294 = "tosa.add"(%33, %48) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %295 = "tosa.rsqrt"(%294) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %296 = "tosa.reshape"(%295) <{new_shape = array<i64: 1, 512, 1, 1>}> : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %297 = "tosa.mul"(%293, %296) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %298 = "tosa.mul"(%297, %61) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %299 = "tosa.add"(%298, %60) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %300 = "tosa.clamp"(%299) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %301 = "tosa.transpose"(%300, %22) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %302 = "tosa.transpose"(%6, %22) : (tensor<512x512x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x512xf32>
    %303 = "tosa.conv2d"(%301, %302, %26) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %304 = "tosa.transpose"(%303, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %305 = "tosa.sub"(%304, %59) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %306 = "tosa.add"(%32, %48) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %307 = "tosa.rsqrt"(%306) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %308 = "tosa.reshape"(%307) <{new_shape = array<i64: 1, 512, 1, 1>}> : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %309 = "tosa.mul"(%305, %308) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %310 = "tosa.mul"(%309, %58) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %311 = "tosa.add"(%310, %0) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %312 = "tosa.conv2d"(%289, %106, %26) <{dilation = array<i64: 1, 1>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 2, 2>}> : (tensor<1x14x14x256xf32>, tensor<512x1x1x256xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %313 = "tosa.transpose"(%312, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %314 = "tosa.sub"(%313, %57) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %315 = "tosa.add"(%31, %48) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %316 = "tosa.rsqrt"(%315) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %317 = "tosa.reshape"(%316) <{new_shape = array<i64: 1, 512, 1, 1>}> : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %318 = "tosa.mul"(%314, %317) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %319 = "tosa.mul"(%318, %56) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %320 = "tosa.add"(%319, %0) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %321 = "tosa.add"(%311, %320) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %322 = "tosa.clamp"(%321) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %323 = "tosa.transpose"(%322, %22) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %324 = "tosa.transpose"(%5, %22) : (tensor<512x512x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x512xf32>
    %325 = "tosa.conv2d"(%323, %324, %26) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %326 = "tosa.transpose"(%325, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %327 = "tosa.sub"(%326, %55) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %328 = "tosa.add"(%30, %48) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %329 = "tosa.rsqrt"(%328) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %330 = "tosa.reshape"(%329) <{new_shape = array<i64: 1, 512, 1, 1>}> : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %331 = "tosa.mul"(%327, %330) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %332 = "tosa.mul"(%331, %54) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %333 = "tosa.add"(%332, %53) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %334 = "tosa.clamp"(%333) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %335 = "tosa.transpose"(%334, %22) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %336 = "tosa.transpose"(%4, %22) : (tensor<512x512x3x3xf32>, tensor<4xi32>) -> tensor<512x3x3x512xf32>
    %337 = "tosa.conv2d"(%335, %336, %26) <{dilation = array<i64: 1, 1>, pad = array<i64: 1, 1, 1, 1>, stride = array<i64: 1, 1>}> : (tensor<1x7x7x512xf32>, tensor<512x3x3x512xf32>, tensor<512xf32>) -> tensor<1x7x7x512xf32>
    %338 = "tosa.transpose"(%337, %23) : (tensor<1x7x7x512xf32>, tensor<4xi32>) -> tensor<1x512x7x7xf32>
    %339 = "tosa.sub"(%338, %52) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %340 = "tosa.add"(%29, %48) : (tensor<512x1x1xf32>, tensor<1x1x1xf32>) -> tensor<512x1x1xf32>
    %341 = "tosa.rsqrt"(%340) : (tensor<512x1x1xf32>) -> tensor<512x1x1xf32>
    %342 = "tosa.reshape"(%341) <{new_shape = array<i64: 1, 512, 1, 1>}> : (tensor<512x1x1xf32>) -> tensor<1x512x1x1xf32>
    %343 = "tosa.mul"(%339, %342) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %344 = "tosa.mul"(%343, %51) <{shift = 0 : i32}> : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %345 = "tosa.add"(%344, %50) : (tensor<1x512x7x7xf32>, tensor<1x512x1x1xf32>) -> tensor<1x512x7x7xf32>
    %346 = "tosa.add"(%345, %322) : (tensor<1x512x7x7xf32>, tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %347 = "tosa.clamp"(%346) <{max_fp = 3.40282347E+38 : f32, max_int = 2147483647 : i64, min_fp = 0.000000e+00 : f32, min_int = 0 : i64}> : (tensor<1x512x7x7xf32>) -> tensor<1x512x7x7xf32>
    %348 = "tosa.transpose"(%347, %22) : (tensor<1x512x7x7xf32>, tensor<4xi32>) -> tensor<1x7x7x512xf32>
    %349 = "tosa.avg_pool2d"(%348) <{acc_type = f32, kernel = array<i64: 7, 7>, pad = array<i64: 0, 0, 0, 0>, stride = array<i64: 1, 1>}> : (tensor<1x7x7x512xf32>) -> tensor<1x1x1x512xf32>
    %350 = "tosa.transpose"(%3, %27) : (tensor<1000x512xf32>, tensor<2xi32>) -> tensor<512x1000xf32>
    %351 = "tosa.reshape"(%349) <{new_shape = array<i64: 1, 1, 512>}> : (tensor<1x1x1x512xf32>) -> tensor<1x1x512xf32>
    %352 = "tosa.reshape"(%350) <{new_shape = array<i64: 1, 512, 1000>}> : (tensor<512x1000xf32>) -> tensor<1x512x1000xf32>
    %353 = "tosa.matmul"(%351, %352) : (tensor<1x1x512xf32>, tensor<1x512x1000xf32>) -> tensor<1x1x1000xf32>
    %354 = "tosa.reshape"(%353) <{new_shape = array<i64: 1, 1000>}> : (tensor<1x1x1000xf32>) -> tensor<1x1000xf32>
    %355 = "tosa.add"(%354, %28) : (tensor<1x1000xf32>, tensor<1x1000xf32>) -> tensor<1x1000xf32>
    return %355 : tensor<1x1000xf32>
  }
}

