; ModuleID = '<stdin>'
source_filename = "LLVMDialectModule"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

@0 = internal unnamed_addr addrspace(3) global [512 x float] undef

define amdgpu_kernel void @rock_gemm(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 !reqd_work_group_size !1 {
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !2
  %5 = and i32 %4, 1
  %6 = icmp ugt i32 %4, 3
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = lshr i64 %7, 32
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 65535
  %12 = insertelement <4 x i32> <i32 poison, i32 poison, i32 32, i32 159744>, i32 %8, i64 0
  %13 = insertelement <4 x i32> %12, i32 %11, i64 1
  %14 = shl nuw nsw i32 %4, 3
  %15 = and i32 %14, 1008
  %16 = select i1 %6, i32 32, i32 %15
  %17 = shl nuw nsw i32 %5, 3
  %18 = or i32 %16, %17
  %19 = tail call <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32> %13, i32 %18, i32 0, i32 0)
  %20 = and i32 %4, 3
  %21 = lshr i32 %4, 1
  %22 = and i32 %21, 62
  %23 = icmp ugt i32 %22, 33
  %24 = ptrtoint ptr %1 to i64
  %25 = trunc i64 %24 to i32
  %26 = lshr i64 %24, 32
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = insertelement <4 x i32> <i32 poison, i32 poison, i32 544, i32 159744>, i32 %25, i64 0
  %30 = insertelement <4 x i32> %29, i32 %28, i64 1
  %31 = mul nuw nsw i32 %20, 136
  %32 = shl nuw nsw i32 %22, 2
  %33 = select i1 %23, i32 544, i32 %32
  %34 = add nuw nsw i32 %33, %31
  %35 = tail call <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32> %30, i32 %34, i32 0, i32 0)
  %36 = extractelement <2 x float> %35, i64 0
  %37 = extractelement <2 x float> %35, i64 1
  %38 = shl nuw nsw i32 %5, 7
  %39 = and i32 %4, 126
  %40 = or i32 %38, %39
  %41 = getelementptr float, ptr addrspace(3) @0, i32 %40
  store <2 x float> %19, ptr addrspace(3) %41, align 8
  %42 = shl nuw nsw i32 %4, 6
  %43 = and i32 %42, 128
  %44 = shl nuw nsw i32 %22, 1
  %45 = or i32 %44, %43
  %46 = or i32 %45, %5
  %47 = or i32 %46, 256
  %48 = getelementptr float, ptr addrspace(3) @0, i32 %47
  store float %36, ptr addrspace(3) %48, align 4
  %49 = or i32 %46, 258
  %50 = getelementptr float, ptr addrspace(3) @0, i32 %49
  store float %37, ptr addrspace(3) %50, align 4
  %51 = and i32 %21, 32
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0As_barrier", ""() #5
  %52 = or i32 %51, 128
  %53 = and i32 %4, 63
  %54 = shl nuw nsw i32 %53, 1
  %55 = getelementptr float, ptr addrspace(3) @0, i32 %54
  %56 = load <2 x float>, ptr addrspace(3) %55, align 8
  %57 = add nuw nsw i32 %52, %53
  %58 = shl nuw nsw i32 %57, 1
  %59 = getelementptr float, ptr addrspace(3) @0, i32 %58
  %60 = load <2 x float>, ptr addrspace(3) %59, align 8
  %61 = or i32 %4, 64
  %62 = shl nuw nsw i32 %61, 1
  %63 = getelementptr float, ptr addrspace(3) @0, i32 %62
  %64 = load <2 x float>, ptr addrspace(3) %63, align 8
  %65 = add nuw nsw i32 %52, %61
  %66 = shl nuw nsw i32 %65, 1
  %67 = getelementptr float, ptr addrspace(3) @0, i32 %66
  %68 = load <2 x float>, ptr addrspace(3) %67, align 8
  %69 = extractelement <2 x float> %56, i64 0
  %70 = extractelement <2 x float> %60, i64 0
  %71 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %69, float %70, <32 x float> zeroinitializer, i32 0, i32 0, i32 1)
  %72 = extractelement <2 x float> %56, i64 1
  %73 = extractelement <2 x float> %60, i64 1
  %74 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %72, float %73, <32 x float> %71, i32 0, i32 0, i32 1)
  %75 = extractelement <2 x float> %64, i64 0
  %76 = extractelement <2 x float> %68, i64 0
  %77 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %75, float %76, <32 x float> %74, i32 0, i32 0, i32 1)
  %78 = extractelement <2 x float> %64, i64 1
  %79 = extractelement <2 x float> %68, i64 1
  %80 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %78, float %79, <32 x float> %77, i32 0, i32 0, i32 1)
  %81 = and i32 %4, 31
  %82 = lshr i32 %4, 3
  %83 = and i32 %82, 4
  %84 = or i32 %51, %81
  %85 = extractelement <32 x float> %80, i64 0
  %86 = lshr exact i32 %83, 1
  %87 = icmp ugt i32 %84, 33
  %88 = ptrtoint ptr %2 to i64
  %89 = trunc i64 %88 to i32
  %90 = lshr i64 %88, 32
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 65535
  %93 = insertelement <4 x i32> <i32 poison, i32 poison, i32 272, i32 159744>, i32 %89, i64 0
  %94 = insertelement <4 x i32> %93, i32 %92, i64 1
  %95 = mul nuw nsw i32 %86, 136
  %96 = shl nuw nsw i32 %84, 2
  %97 = select i1 %87, i32 272, i32 %96
  %98 = add nuw nsw i32 %97, %95
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %85, <4 x i32> %94, i32 %98, i32 0, i32 0)
  %99 = extractelement <32 x float> %80, i64 1
  %100 = icmp eq i32 %83, 0
  %101 = select i1 %100, i32 136, i32 272
  %102 = add nuw nsw i32 %97, %101
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %99, <4 x i32> %94, i32 %102, i32 0, i32 0)
  %103 = extractelement <32 x float> %80, i64 2
  %104 = add nuw nsw i32 %97, 272
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %103, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %105 = extractelement <32 x float> %80, i64 3
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %105, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %106 = extractelement <32 x float> %80, i64 4
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %106, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %107 = extractelement <32 x float> %80, i64 5
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %107, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %108 = extractelement <32 x float> %80, i64 6
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %108, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %109 = extractelement <32 x float> %80, i64 7
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %109, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %110 = extractelement <32 x float> %80, i64 8
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %110, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %111 = extractelement <32 x float> %80, i64 9
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %111, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %112 = extractelement <32 x float> %80, i64 10
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %112, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %113 = extractelement <32 x float> %80, i64 11
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %113, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %114 = extractelement <32 x float> %80, i64 12
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %114, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %115 = extractelement <32 x float> %80, i64 13
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %115, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %116 = extractelement <32 x float> %80, i64 14
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %116, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %117 = extractelement <32 x float> %80, i64 15
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %117, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %118 = extractelement <32 x float> %80, i64 16
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %118, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %119 = extractelement <32 x float> %80, i64 17
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %119, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %120 = extractelement <32 x float> %80, i64 18
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %120, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %121 = extractelement <32 x float> %80, i64 19
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %121, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %122 = extractelement <32 x float> %80, i64 20
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %122, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %123 = extractelement <32 x float> %80, i64 21
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %123, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %124 = extractelement <32 x float> %80, i64 22
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %124, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %125 = extractelement <32 x float> %80, i64 23
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %125, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %126 = extractelement <32 x float> %80, i64 24
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %126, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %127 = extractelement <32 x float> %80, i64 25
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %127, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %128 = extractelement <32 x float> %80, i64 26
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %128, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %129 = extractelement <32 x float> %80, i64 27
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %129, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %130 = extractelement <32 x float> %80, i64 28
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %130, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %131 = extractelement <32 x float> %80, i64 29
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %131, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %132 = extractelement <32 x float> %80, i64 30
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %132, <4 x i32> %94, i32 %104, i32 0, i32 0)
  %133 = extractelement <32 x float> %80, i64 31
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %133, <4 x i32> %94, i32 %104, i32 0, i32 0)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32>, i32, i32, i32 immarg) #2

; Function Attrs: mustprogress nounwind willreturn writeonly
declare void @llvm.amdgcn.raw.buffer.store.f32(float, <4 x i32>, i32, i32, i32 immarg) #3

; Function Attrs: convergent mustprogress nofree nounwind readnone willreturn
declare <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float, float, <32 x float>, i32 immarg, i32 immarg, i32 immarg) #4

attributes #0 = { "amdgpu-flat-work-group-size"="128,128" "amdgpu-implicitarg-num-bytes"="56" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn }
attributes #3 = { mustprogress nounwind willreturn writeonly }
attributes #4 = { convergent mustprogress nofree nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 128, i32 1, i32 1}
!2 = !{i32 0, i32 128}
