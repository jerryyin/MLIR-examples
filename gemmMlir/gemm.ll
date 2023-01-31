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
  %12 = insertelement <4 x i32> <i32 poison, i32 poison, i32 64, i32 159744>, i32 %8, i64 0
  %13 = insertelement <4 x i32> %12, i32 %11, i64 1
  %14 = shl nuw nsw i32 %4, 4
  %15 = and i32 %14, 2016
  %16 = select i1 %6, i32 64, i32 %15
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
  %29 = insertelement <4 x i32> <i32 poison, i32 poison, i32 1088, i32 159744>, i32 %25, i64 0
  %30 = insertelement <4 x i32> %29, i32 %28, i64 1
  %31 = mul nuw nsw i32 %20, 136
  %32 = shl nuw nsw i32 %22, 2
  %33 = select i1 %23, i32 1088, i32 %32
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
  %52 = or i32 %51, 128
  %53 = and i32 %4, 63
  %54 = or i32 %18, 16
  %55 = add nuw nsw i32 %34, 544
  %56 = tail call <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32> %13, i32 %54, i32 0, i32 0)
  %57 = tail call <2 x float> @llvm.amdgcn.raw.buffer.load.v2f32(<4 x i32> %30, i32 %55, i32 0, i32 0)
  %58 = extractelement <2 x float> %57, i64 0
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0As_barrier", ""() #5
  %59 = shl nuw nsw i32 %53, 1
  %60 = getelementptr float, ptr addrspace(3) @0, i32 %59
  %61 = load <2 x float>, ptr addrspace(3) %60, align 8
  %62 = add nuw nsw i32 %53, %52
  %63 = shl nuw nsw i32 %62, 1
  %64 = getelementptr float, ptr addrspace(3) @0, i32 %63
  %65 = load <2 x float>, ptr addrspace(3) %64, align 8
  %66 = or i32 %4, 64
  %67 = shl nuw nsw i32 %66, 1
  %68 = getelementptr float, ptr addrspace(3) @0, i32 %67
  %69 = load <2 x float>, ptr addrspace(3) %68, align 8
  %70 = add nuw nsw i32 %66, %52
  %71 = shl nuw nsw i32 %70, 1
  %72 = getelementptr float, ptr addrspace(3) @0, i32 %71
  %73 = load <2 x float>, ptr addrspace(3) %72, align 8
  %74 = extractelement <2 x float> %61, i64 0
  %75 = extractelement <2 x float> %65, i64 0
  %76 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %74, float %75, <32 x float> zeroinitializer, i32 0, i32 0, i32 1)
  %77 = extractelement <2 x float> %61, i64 1
  %78 = extractelement <2 x float> %65, i64 1
  %79 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %77, float %78, <32 x float> %76, i32 0, i32 0, i32 1)
  %80 = extractelement <2 x float> %69, i64 0
  %81 = extractelement <2 x float> %73, i64 0
  %82 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %80, float %81, <32 x float> %79, i32 0, i32 0, i32 1)
  %83 = extractelement <2 x float> %73, i64 1
  %84 = extractelement <2 x float> %57, i64 1
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0As_barrier", ""() #5
  store <2 x float> %56, ptr addrspace(3) %41, align 8
  store float %58, ptr addrspace(3) %48, align 4
  store float %84, ptr addrspace(3) %50, align 4
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0As_barrier", ""() #5
  %85 = load <2 x float>, ptr addrspace(3) %60, align 8
  %86 = load <2 x float>, ptr addrspace(3) %64, align 8
  %87 = load <2 x float>, ptr addrspace(3) %68, align 8
  %88 = load <2 x float>, ptr addrspace(3) %72, align 8
  %89 = extractelement <2 x float> %69, i64 1
  %90 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %89, float %83, <32 x float> %82, i32 0, i32 0, i32 1)
  %91 = extractelement <2 x float> %85, i64 0
  %92 = extractelement <2 x float> %86, i64 0
  %93 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %91, float %92, <32 x float> %90, i32 0, i32 0, i32 1)
  %94 = extractelement <2 x float> %85, i64 1
  %95 = extractelement <2 x float> %86, i64 1
  %96 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %94, float %95, <32 x float> %93, i32 0, i32 0, i32 1)
  %97 = extractelement <2 x float> %87, i64 0
  %98 = extractelement <2 x float> %88, i64 0
  %99 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %97, float %98, <32 x float> %96, i32 0, i32 0, i32 1)
  %100 = extractelement <2 x float> %87, i64 1
  %101 = extractelement <2 x float> %88, i64 1
  %102 = tail call <32 x float> @llvm.amdgcn.mfma.f32.32x32x1f32(float %100, float %101, <32 x float> %99, i32 0, i32 0, i32 1)
  %103 = and i32 %4, 31
  %104 = lshr i32 %4, 3
  %105 = and i32 %104, 4
  %106 = or i32 %51, %103
  %107 = extractelement <32 x float> %102, i64 0
  %108 = lshr exact i32 %105, 1
  %109 = icmp ugt i32 %106, 33
  %110 = ptrtoint ptr %2 to i64
  %111 = trunc i64 %110 to i32
  %112 = lshr i64 %110, 32
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 65535
  %115 = insertelement <4 x i32> <i32 poison, i32 poison, i32 272, i32 159744>, i32 %111, i64 0
  %116 = insertelement <4 x i32> %115, i32 %114, i64 1
  %117 = mul nuw nsw i32 %108, 136
  %118 = shl nuw nsw i32 %106, 2
  %119 = select i1 %109, i32 272, i32 %118
  %120 = add nuw nsw i32 %119, %117
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %107, <4 x i32> %116, i32 %120, i32 0, i32 0)
  %121 = extractelement <32 x float> %102, i64 1
  %122 = icmp eq i32 %105, 0
  %123 = select i1 %122, i32 136, i32 272
  %124 = add nuw nsw i32 %119, %123
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %121, <4 x i32> %116, i32 %124, i32 0, i32 0)
  %125 = extractelement <32 x float> %102, i64 2
  %126 = add nuw nsw i32 %119, 272
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %125, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %127 = extractelement <32 x float> %102, i64 3
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %127, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %128 = extractelement <32 x float> %102, i64 4
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %128, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %129 = extractelement <32 x float> %102, i64 5
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %129, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %130 = extractelement <32 x float> %102, i64 6
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %130, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %131 = extractelement <32 x float> %102, i64 7
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %131, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %132 = extractelement <32 x float> %102, i64 8
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %132, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %133 = extractelement <32 x float> %102, i64 9
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %133, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %134 = extractelement <32 x float> %102, i64 10
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %134, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %135 = extractelement <32 x float> %102, i64 11
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %135, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %136 = extractelement <32 x float> %102, i64 12
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %136, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %137 = extractelement <32 x float> %102, i64 13
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %137, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %138 = extractelement <32 x float> %102, i64 14
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %138, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %139 = extractelement <32 x float> %102, i64 15
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %139, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %140 = extractelement <32 x float> %102, i64 16
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %140, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %141 = extractelement <32 x float> %102, i64 17
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %141, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %142 = extractelement <32 x float> %102, i64 18
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %142, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %143 = extractelement <32 x float> %102, i64 19
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %143, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %144 = extractelement <32 x float> %102, i64 20
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %144, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %145 = extractelement <32 x float> %102, i64 21
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %145, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %146 = extractelement <32 x float> %102, i64 22
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %146, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %147 = extractelement <32 x float> %102, i64 23
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %147, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %148 = extractelement <32 x float> %102, i64 24
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %148, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %149 = extractelement <32 x float> %102, i64 25
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %149, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %150 = extractelement <32 x float> %102, i64 26
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %150, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %151 = extractelement <32 x float> %102, i64 27
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %151, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %152 = extractelement <32 x float> %102, i64 28
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %152, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %153 = extractelement <32 x float> %102, i64 29
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %153, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %154 = extractelement <32 x float> %102, i64 30
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %154, <4 x i32> %116, i32 %126, i32 0, i32 0)
  %155 = extractelement <32 x float> %102, i64 31
  tail call void @llvm.amdgcn.raw.buffer.store.f32(float %155, <4 x i32> %116, i32 %126, i32 0, i32 0)
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
