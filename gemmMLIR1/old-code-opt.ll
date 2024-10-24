; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"

@__wg_rock_gemm_0 = internal unnamed_addr addrspace(3) global [4096 x half] undef

define amdgpu_kernel void @rock_gemm(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 !reqd_work_group_size !0 {
.preheader30.preheader:
  %3 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !1
  %4 = lshr i32 %3, 5
  %5 = and i32 %3, 31
  %6 = shl nuw nsw i32 %4, 10
  %7 = ptrtoint ptr %0 to i64
  %8 = trunc i64 %7 to i32
  %9 = lshr i64 %7, 32
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 65535
  %12 = insertelement <4 x i32> <i32 poison, i32 poison, i32 4096, i32 159744>, i32 %8, i64 0
  %13 = insertelement <4 x i32> %12, i32 %11, i64 1
  %14 = shl nuw nsw i32 %5, 2
  %15 = or i32 %6, %14
  %16 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %15, i32 0, i32 0)
  %17 = or i32 %15, 128
  %18 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %17, i32 0, i32 0)
  %19 = insertelement <2 x i32> poison, i32 %16, i64 0
  %20 = insertelement <2 x i32> %19, i32 %18, i64 1
  %21 = trunc <2 x i32> %20 to <2 x i16>
  %22 = lshr <2 x i32> %20, <i32 16, i32 16>
  %23 = trunc <2 x i32> %22 to <2 x i16>
  %24 = or i32 %15, 256
  %25 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %24, i32 0, i32 0)
  %26 = or i32 %15, 384
  %27 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %26, i32 0, i32 0)
  %28 = insertelement <2 x i32> poison, i32 %25, i64 0
  %29 = insertelement <2 x i32> %28, i32 %27, i64 1
  %30 = trunc <2 x i32> %29 to <2 x i16>
  %31 = lshr <2 x i32> %29, <i32 16, i32 16>
  %32 = trunc <2 x i32> %31 to <2 x i16>
  %33 = or i32 %15, 512
  %34 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %33, i32 0, i32 0)
  %35 = or i32 %15, 640
  %36 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %35, i32 0, i32 0)
  %37 = insertelement <2 x i32> poison, i32 %34, i64 0
  %38 = insertelement <2 x i32> %37, i32 %36, i64 1
  %39 = trunc <2 x i32> %38 to <2 x i16>
  %40 = lshr <2 x i32> %38, <i32 16, i32 16>
  %41 = trunc <2 x i32> %40 to <2 x i16>
  %42 = or i32 %15, 768
  %43 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %42, i32 0, i32 0)
  %44 = or i32 %15, 896
  %45 = tail call i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32> %13, i32 %44, i32 0, i32 0)
  %46 = insertelement <2 x i32> poison, i32 %43, i64 0
  %47 = insertelement <2 x i32> %46, i32 %45, i64 1
  %48 = trunc <2 x i32> %47 to <2 x i16>
  %49 = lshr <2 x i32> %47, <i32 16, i32 16>
  %50 = trunc <2 x i32> %49 to <2 x i16>
  %51 = and i32 %3, 3
  %52 = shl nuw nsw i32 %51, 4
  %53 = lshr i32 %3, 1
  %54 = and i32 %53, 62
  %55 = icmp eq i32 %54, 0
  %56 = ptrtoint ptr %1 to i64
  %57 = trunc i64 %56 to i32
  %58 = lshr i64 %56, 32
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65535
  %61 = insertelement <4 x i32> <i32 poison, i32 poison, i32 64, i32 159744>, i32 %57, i64 0
  %62 = insertelement <4 x i32> %61, i32 %60, i64 1
  %63 = select i1 %55, i32 %52, i32 64
  %64 = tail call <4 x i32> @llvm.amdgcn.raw.buffer.load.v4i32(<4 x i32> %62, i32 %63, i32 0, i32 0)
  %65 = shufflevector <2 x i16> %21, <2 x i16> %30, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %66 = shufflevector <2 x i16> %39, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %67 = shufflevector <8 x i16> %65, <8 x i16> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 undef, i32 undef>
  %68 = shufflevector <2 x i16> %48, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %69 = shufflevector <8 x i16> %67, <8 x i16> %68, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %70 = shufflevector <2 x i16> %23, <2 x i16> %32, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %71 = shufflevector <2 x i16> %41, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %72 = shufflevector <8 x i16> %70, <8 x i16> %71, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 undef, i32 undef>
  %73 = shufflevector <2 x i16> %50, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %74 = shufflevector <8 x i16> %72, <8 x i16> %73, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %75 = shl nuw nsw i32 %4, 9
  %76 = shl nuw nsw i32 %5, 4
  %77 = or i32 %75, %76
  %78 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %77
  store <8 x i16> %69, ptr addrspace(3) %78, align 16
  %79 = or i32 %77, 8
  %80 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %79
  store <8 x i16> %74, ptr addrspace(3) %80, align 16
  %81 = shl nuw nsw i32 %51, 9
  %82 = shl nuw nsw i32 %54, 3
  %83 = or i32 %82, %81
  %84 = or i32 %83, 2048
  %85 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %84
  store <4 x i32> %64, ptr addrspace(3) %85, align 16
  %86 = or i32 %83, 2056
  %87 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %86
  store <8 x half> zeroinitializer, ptr addrspace(3) %87, align 16
  %88 = and i32 %53, 32
  tail call void asm sideeffect "s_waitcnt lgkmcnt(0)\0As_barrier", ""() #5
  %89 = and i32 %4, 1
  %90 = or i32 %5, 256
  %91 = shl nuw nsw i32 %89, 6
  %92 = or i32 %91, %5
  %93 = or i32 %92, %88
  %94 = shl nuw nsw i32 %93, 3
  %95 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %94
  %96 = load <8 x half>, ptr addrspace(3) %95, align 16
  %97 = shufflevector <8 x half> %96, <8 x half> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %98 = shufflevector <8 x half> %96, <8 x half> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %99 = shl nuw nsw i32 %4, 6
  %100 = or i32 %99, 128
  %101 = or i32 %100, %5
  %102 = or i32 %101, %88
  %103 = shl nuw nsw i32 %102, 3
  %104 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %103
  %105 = load <8 x half>, ptr addrspace(3) %104, align 16
  %106 = shufflevector <8 x half> %105, <8 x half> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %107 = shufflevector <8 x half> %105, <8 x half> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %108 = or i32 %90, %91
  %109 = shl nuw nsw i32 %108, 3
  %110 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %109
  %111 = load <8 x half>, ptr addrspace(3) %110, align 16
  %112 = shufflevector <8 x half> %111, <8 x half> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %113 = shufflevector <8 x half> %111, <8 x half> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %114 = or i32 %90, %100
  %115 = shl nuw nsw i32 %114, 3
  %116 = getelementptr half, ptr addrspace(3) @__wg_rock_gemm_0, i32 %115
  %117 = load <8 x half>, ptr addrspace(3) %116, align 16
  %118 = shufflevector <8 x half> %117, <8 x half> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %119 = shufflevector <8 x half> %117, <8 x half> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %120 = tail call <16 x float> @llvm.amdgcn.mfma.f32.32x32x8f16(<4 x half> %97, <4 x half> %112, <16 x float> zeroinitializer, i32 0, i32 0, i32 0)
  %121 = tail call <16 x float> @llvm.amdgcn.mfma.f32.32x32x8f16(<4 x half> %98, <4 x half> %113, <16 x float> %120, i32 0, i32 0, i32 0)
  %122 = tail call <16 x float> @llvm.amdgcn.mfma.f32.32x32x8f16(<4 x half> %106, <4 x half> %118, <16 x float> %121, i32 0, i32 0, i32 0)
  %123 = tail call <16 x float> @llvm.amdgcn.mfma.f32.32x32x8f16(<4 x half> %107, <4 x half> %119, <16 x float> %122, i32 0, i32 0, i32 0)
  %124 = fptrunc <16 x float> %123 to <16 x half>
  %125 = icmp eq i32 %5, 0
  %.sroa.0.0.vec.extract = extractelement <16 x half> %124, i64 0
  %126 = ptrtoint ptr %2 to i64
  %127 = trunc i64 %126 to i32
  %128 = lshr i64 %126, 32
  %129 = trunc i64 %128 to i32
  %130 = and i32 %129, 65535
  %131 = insertelement <4 x i32> <i32 poison, i32 poison, i32 128, i32 159744>, i32 %127, i64 0
  %132 = insertelement <4 x i32> %131, i32 %130, i64 1
  %133 = shl nuw nsw i32 %89, 3
  %134 = shl nuw nsw i32 %88, 1
  %.op = or i32 %133, %134
  %135 = select i1 %125, i32 %.op, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.0.vec.extract, <4 x i32> %132, i32 %135, i32 0, i32 0)
  %.sroa.0.2.vec.extract = extractelement <16 x half> %124, i64 1
  %.op9 = or i32 %.op, 2
  %136 = select i1 %125, i32 %.op9, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.2.vec.extract, <4 x i32> %132, i32 %136, i32 0, i32 0)
  %.sroa.0.4.vec.extract = extractelement <16 x half> %124, i64 2
  %.op10 = or i32 %.op, 4
  %137 = select i1 %125, i32 %.op10, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.4.vec.extract, <4 x i32> %132, i32 %137, i32 0, i32 0)
  %.sroa.0.6.vec.extract = extractelement <16 x half> %124, i64 3
  %.op11 = or i32 %.op, 6
  %138 = select i1 %125, i32 %.op11, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.6.vec.extract, <4 x i32> %132, i32 %138, i32 0, i32 0)
  %.sroa.0.8.vec.extract = extractelement <16 x half> %124, i64 4
  %.op12 = or i32 %.op, 16
  %139 = select i1 %125, i32 %.op12, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.8.vec.extract, <4 x i32> %132, i32 %139, i32 0, i32 0)
  %.sroa.0.10.vec.extract = extractelement <16 x half> %124, i64 5
  %.op13 = or i32 %.op, 18
  %140 = select i1 %125, i32 %.op13, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.10.vec.extract, <4 x i32> %132, i32 %140, i32 0, i32 0)
  %.sroa.0.12.vec.extract = extractelement <16 x half> %124, i64 6
  %.op14 = or i32 %.op, 20
  %141 = select i1 %125, i32 %.op14, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.12.vec.extract, <4 x i32> %132, i32 %141, i32 0, i32 0)
  %.sroa.0.14.vec.extract = extractelement <16 x half> %124, i64 7
  %.op15 = or i32 %.op, 22
  %142 = select i1 %125, i32 %.op15, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.14.vec.extract, <4 x i32> %132, i32 %142, i32 0, i32 0)
  %.sroa.0.16.vec.extract = extractelement <16 x half> %124, i64 8
  %.op16 = or i32 %.op, 32
  %143 = select i1 %125, i32 %.op16, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.16.vec.extract, <4 x i32> %132, i32 %143, i32 0, i32 0)
  %.sroa.0.18.vec.extract = extractelement <16 x half> %124, i64 9
  %.op17 = or i32 %.op, 34
  %144 = select i1 %125, i32 %.op17, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.18.vec.extract, <4 x i32> %132, i32 %144, i32 0, i32 0)
  %.sroa.0.20.vec.extract = extractelement <16 x half> %124, i64 10
  %.op18 = or i32 %.op, 36
  %145 = select i1 %125, i32 %.op18, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.20.vec.extract, <4 x i32> %132, i32 %145, i32 0, i32 0)
  %.sroa.0.22.vec.extract = extractelement <16 x half> %124, i64 11
  %.op19 = or i32 %.op, 38
  %146 = select i1 %125, i32 %.op19, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.22.vec.extract, <4 x i32> %132, i32 %146, i32 0, i32 0)
  %.sroa.0.24.vec.extract = extractelement <16 x half> %124, i64 12
  %.op20 = or i32 %.op, 48
  %147 = select i1 %125, i32 %.op20, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.24.vec.extract, <4 x i32> %132, i32 %147, i32 0, i32 0)
  %.sroa.0.26.vec.extract = extractelement <16 x half> %124, i64 13
  %.op21 = or i32 %.op, 50
  %148 = select i1 %125, i32 %.op21, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.26.vec.extract, <4 x i32> %132, i32 %148, i32 0, i32 0)
  %.sroa.0.28.vec.extract = extractelement <16 x half> %124, i64 14
  %.op22 = or i32 %.op, 52
  %149 = select i1 %125, i32 %.op22, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.28.vec.extract, <4 x i32> %132, i32 %149, i32 0, i32 0)
  %.sroa.0.30.vec.extract = extractelement <16 x half> %124, i64 15
  %.op23 = or i32 %.op, 54
  %150 = select i1 %125, i32 %.op23, i32 128
  tail call void @llvm.amdgcn.raw.buffer.store.f16(half %.sroa.0.30.vec.extract, <4 x i32> %132, i32 %150, i32 0, i32 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare i32 @llvm.amdgcn.raw.buffer.load.i32(<4 x i32>, i32, i32, i32 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.amdgcn.raw.buffer.load.v4i32(<4 x i32>, i32, i32, i32 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.amdgcn.raw.buffer.store.f16(half, <4 x i32>, i32, i32, i32 immarg) #3

; Function Attrs: convergent mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.amdgcn.mfma.f32.32x32x8f16(<4 x half>, <4 x half>, <16 x float>, i32 immarg, i32 immarg, i32 immarg) #4

attributes #0 = { "amdgpu-flat-work-group-size"="128,128" "amdgpu-implicitarg-num-bytes"="56" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(write) }
attributes #4 = { convergent mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

!0 = !{i32 128, i32 1, i32 1}
!1 = !{i32 0, i32 128}
