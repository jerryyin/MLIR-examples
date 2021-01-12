; ModuleID = '<stdin>'
source_filename = "LLVMDialectModule"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

@__wg_miopen_conv2d_kcyx_nchw_nkhw_0 = internal unnamed_addr addrspace(3) global [4096 x float] undef

; Function Attrs: nounwind
define amdgpu_kernel void @miopen_conv2d_kcyx_nchw_nkhw(float* nocapture readnone %0, float* nocapture readonly %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, float* nocapture readnone %11, float* nocapture readonly %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, float* nocapture readnone %22, float* nocapture %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32) local_unnamed_addr #0 !dbg !3 {
.critedge:
  %33 = alloca <64 x float>, align 4, addrspace(5), !dbg !7
  %34 = tail call i32 @llvm.amdgcn.workgroup.id.x(), !dbg !9
  %35 = sext i32 %34 to i64, !dbg !10
  %.frozen = freeze i64 %35
  %36 = sdiv i64 %.frozen, 900, !dbg !11
  %37 = mul i64 %36, 900
  %.decomposed = sub i64 %.frozen, %37
  %.tr = trunc i64 %36 to i32, !dbg !12
  %38 = shl nsw i32 %.tr, 7, !dbg !12
  %.tr75 = trunc i64 %.decomposed to i32, !dbg !13
  %39 = shl nsw i32 %.tr75, 7, !dbg !13
  %40 = tail call i32 @llvm.amdgcn.workitem.id.x(), !dbg !14
  %41 = sext i32 %40 to i64, !dbg !15
  %.frozen910 = freeze i64 %41
  %42 = sdiv i64 %.frozen910, 8, !dbg !16
  %.tr76 = trunc i64 %42 to i32, !dbg !17
  %43 = shl nsw i32 %.tr76, 2, !dbg !17
  %44 = add i32 %38, %43, !dbg !18
  %.frozen908 = freeze i64 %41
  %45 = sdiv i64 %.frozen908, 32, !dbg !19
  %46 = mul i64 %45, 32
  %.decomposed909 = sub i64 %.frozen908, %46
  %.tr77 = trunc i64 %.decomposed909 to i32, !dbg !20
  %47 = shl nsw i32 %.tr77, 2, !dbg !20
  %48 = add i32 %39, %47, !dbg !21
  %49 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 2, !dbg !22
  %50 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 4, !dbg !22
  %51 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 6, !dbg !22
  %52 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 8, !dbg !22
  %53 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 10, !dbg !22
  %54 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 12, !dbg !22
  %55 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 14, !dbg !22
  %56 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 16, !dbg !22
  %57 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 18, !dbg !22
  %58 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 20, !dbg !22
  %59 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 22, !dbg !22
  %60 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 24, !dbg !22
  %61 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 26, !dbg !22
  %62 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 28, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %62, align 4, !dbg !22
  %63 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 29, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %63, align 4, !dbg !22
  %64 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 30, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %64, align 4, !dbg !22
  %65 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 31, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %65, align 4, !dbg !22
  %66 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 32, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %66, align 4, !dbg !22
  %67 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 33, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %67, align 4, !dbg !22
  %68 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 34, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %68, align 4, !dbg !22
  %69 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 35, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %69, align 4, !dbg !22
  %70 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 36, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %70, align 4, !dbg !22
  %71 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 37, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %71, align 4, !dbg !22
  %72 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 38, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %72, align 4, !dbg !22
  %73 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 39, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %73, align 4, !dbg !22
  %74 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 40, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %74, align 4, !dbg !22
  %75 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 41, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %75, align 4, !dbg !22
  %76 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 42, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %76, align 4, !dbg !22
  %77 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 43, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %77, align 4, !dbg !22
  %78 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 44, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %78, align 4, !dbg !22
  %79 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 45, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %79, align 4, !dbg !22
  %80 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 46, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %80, align 4, !dbg !22
  %81 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 47, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %81, align 4, !dbg !22
  %82 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 48, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %82, align 4, !dbg !22
  %83 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 49, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %83, align 4, !dbg !22
  %84 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 50, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %84, align 4, !dbg !22
  %85 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 51, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %85, align 4, !dbg !22
  %86 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 52, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %86, align 4, !dbg !22
  %87 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 53, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %87, align 4, !dbg !22
  %88 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 54, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %88, align 4, !dbg !22
  %89 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 55, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %89, align 4, !dbg !22
  %90 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 56, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %90, align 4, !dbg !22
  %91 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 57, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %91, align 4, !dbg !22
  %92 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 58, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %92, align 4, !dbg !22
  %93 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 59, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %93, align 4, !dbg !22
  %94 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 60, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %94, align 4, !dbg !22
  %95 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 61, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %95, align 4, !dbg !22
  %96 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 62, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %96, align 4, !dbg !22
  %97 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 63, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %97, align 4, !dbg !22
  %.sub = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 0
  %98 = mul i64 %42, 8
  %.decomposed911 = sub i64 %.frozen910, %98
  %99 = trunc i64 %.decomposed911 to i32, !dbg !23
  %100 = trunc i64 %45 to i32, !dbg !24
  %101 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 1, !dbg !22
  %102 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 3, !dbg !22
  %103 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 5, !dbg !22
  %104 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 7, !dbg !22
  %105 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 9, !dbg !22
  %106 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 11, !dbg !22
  %107 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 13, !dbg !22
  %108 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 15, !dbg !22
  %109 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 17, !dbg !22
  %110 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 19, !dbg !22
  %111 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 21, !dbg !22
  %112 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 23, !dbg !22
  %113 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 25, !dbg !22
  %114 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 27, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %.sub, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %101, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %49, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %102, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %50, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %103, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %51, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %104, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %60, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %113, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %61, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %114, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %56, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %109, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %57, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %110, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %58, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %111, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %59, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %112, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %52, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %105, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %53, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %106, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %54, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %107, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %55, align 4, !dbg !22
  store float 0.000000e+00, float addrspace(5)* %108, align 4, !dbg !22
  %115 = insertelement <2 x i32> undef, i32 %99, i32 0, !dbg !25
  %116 = insertelement <2 x i32> undef, i32 %100, i32 0, !dbg !26
  %.frozen912 = freeze i64 %41
  %117 = sdiv i64 %.frozen912, 16, !dbg !27
  %118 = sdiv i64 %41, 64, !dbg !28
  %119 = srem i64 %117, 4, !dbg !29
  %120 = mul i64 %117, 16
  %.decomposed913 = sub i64 %.frozen912, %120
  %.decomposed913.frozen = freeze i64 %.decomposed913
  %121 = sdiv i64 %.decomposed913.frozen, 4, !dbg !30
  %122 = mul i64 %121, 4
  %.decomposed914 = sub i64 %.decomposed913.frozen, %122
  %123 = shl nsw i64 %121, 2, !dbg !31
  %124 = shl nsw i64 %118, 4, !dbg !32
  %125 = add nsw i64 %123, %124, !dbg !33
  %126 = trunc i64 %125 to i32, !dbg !34
  %127 = shl nsw i64 %.decomposed914, 2, !dbg !35
  %128 = shl nsw i64 %119, 4, !dbg !36
  %129 = add nsw i64 %128, %127, !dbg !37
  %130 = add i32 %38, %126, !dbg !38
  %131 = sext i32 %44 to i64, !dbg !22
  %132 = mul nsw i64 %131, 72, !dbg !22
  %.lobit119 = ashr i32 %99, 31, !dbg !39
  %133 = xor i32 %.lobit119, %99, !dbg !39
  %134 = sdiv i32 %133, 9, !dbg !40
  %135 = xor i32 %134, %.lobit119, !dbg !41
  %136 = sext i32 %135 to i64, !dbg !41
  %137 = icmp slt i64 %.decomposed911, 0, !dbg !42
  %138 = add nsw i64 %.decomposed911, 9, !dbg !43
  %139 = select i1 %137, i64 %138, i64 %.decomposed911, !dbg !44
  %.lobit121 = ashr i64 %139, 63, !dbg !45
  %140 = xor i64 %.lobit121, %139, !dbg !45
  %141 = sdiv i64 %140, 3, !dbg !46
  %142 = xor i64 %141, %.lobit121, !dbg !47
  %143 = srem i64 %139, 3, !dbg !48
  %144 = icmp slt i64 %143, 0, !dbg !49
  %145 = add nuw nsw i64 %143, 3, !dbg !50
  %146 = select i1 %144, i64 %145, i64 %143, !dbg !51
  %147 = mul nsw i64 %136, 9, !dbg !52
  %148 = add nsw i64 %147, %132, !dbg !53
  %149 = mul nsw i64 %142, 3, !dbg !54
  %150 = add nsw i64 %148, %146, !dbg !55
  %151 = add i64 %150, %149, !dbg !56
  %152 = getelementptr float, float* %1, i64 %151, !dbg !57
  %153 = bitcast float* %152 to i32*, !dbg !58
  %154 = load i32, i32* %153, align 4, !dbg !58
  %155 = add nsw i32 %99, 1, !dbg !59
  %156 = sext i32 %155 to i64, !dbg !60
  %.lobit119.1 = ashr i32 %155, 31, !dbg !39
  %157 = xor i32 %.lobit119.1, %155, !dbg !39
  %158 = sdiv i32 %157, 9, !dbg !40
  %159 = xor i32 %158, %.lobit119.1, !dbg !41
  %160 = sext i32 %159 to i64, !dbg !41
  %161 = srem i64 %156, 9, !dbg !61
  %162 = icmp slt i64 %161, 0, !dbg !42
  %163 = add nsw i64 %161, 9, !dbg !43
  %164 = select i1 %162, i64 %163, i64 %161, !dbg !44
  %.lobit121.1 = ashr i64 %164, 63, !dbg !45
  %165 = xor i64 %.lobit121.1, %164, !dbg !45
  %166 = sdiv i64 %165, 3, !dbg !46
  %167 = xor i64 %166, %.lobit121.1, !dbg !47
  %168 = srem i64 %164, 3, !dbg !48
  %169 = icmp slt i64 %168, 0, !dbg !49
  %170 = add nuw nsw i64 %168, 3, !dbg !50
  %171 = select i1 %169, i64 %170, i64 %168, !dbg !51
  %172 = mul nsw i64 %160, 9, !dbg !52
  %173 = add nsw i64 %172, %132, !dbg !53
  %174 = mul nsw i64 %167, 3, !dbg !54
  %175 = add nsw i64 %173, %171, !dbg !55
  %176 = add i64 %175, %174, !dbg !56
  %177 = getelementptr float, float* %1, i64 %176, !dbg !57
  %178 = bitcast float* %177 to i32*, !dbg !58
  %179 = load i32, i32* %178, align 4, !dbg !58
  %180 = add nsw i32 %99, 2, !dbg !59
  %181 = sext i32 %180 to i64, !dbg !60
  %.lobit119.2 = ashr i32 %180, 31, !dbg !39
  %182 = xor i32 %.lobit119.2, %180, !dbg !39
  %183 = sdiv i32 %182, 9, !dbg !40
  %184 = xor i32 %183, %.lobit119.2, !dbg !41
  %185 = sext i32 %184 to i64, !dbg !41
  %186 = srem i64 %181, 9, !dbg !61
  %187 = icmp slt i64 %186, 0, !dbg !42
  %188 = add nsw i64 %186, 9, !dbg !43
  %189 = select i1 %187, i64 %188, i64 %186, !dbg !44
  %.lobit121.2 = ashr i64 %189, 63, !dbg !45
  %190 = xor i64 %.lobit121.2, %189, !dbg !45
  %191 = sdiv i64 %190, 3, !dbg !46
  %192 = xor i64 %191, %.lobit121.2, !dbg !47
  %193 = srem i64 %189, 3, !dbg !48
  %194 = icmp slt i64 %193, 0, !dbg !49
  %195 = add nuw nsw i64 %193, 3, !dbg !50
  %196 = select i1 %194, i64 %195, i64 %193, !dbg !51
  %197 = mul nsw i64 %185, 9, !dbg !52
  %198 = add nsw i64 %197, %132, !dbg !53
  %199 = mul nsw i64 %192, 3, !dbg !54
  %200 = add nsw i64 %198, %196, !dbg !55
  %201 = add i64 %200, %199, !dbg !56
  %202 = getelementptr float, float* %1, i64 %201, !dbg !57
  %203 = bitcast float* %202 to i32*, !dbg !58
  %204 = load i32, i32* %203, align 4, !dbg !58
  %205 = add nsw i32 %99, 3, !dbg !59
  %206 = sext i32 %205 to i64, !dbg !60
  %.lobit119.3 = ashr i32 %205, 31, !dbg !39
  %207 = xor i32 %.lobit119.3, %205, !dbg !39
  %208 = sdiv i32 %207, 9, !dbg !40
  %209 = xor i32 %208, %.lobit119.3, !dbg !41
  %210 = sext i32 %209 to i64, !dbg !41
  %211 = srem i64 %206, 9, !dbg !61
  %212 = icmp slt i64 %211, 0, !dbg !42
  %213 = add nsw i64 %211, 9, !dbg !43
  %214 = select i1 %212, i64 %213, i64 %211, !dbg !44
  %.lobit121.3 = ashr i64 %214, 63, !dbg !45
  %215 = xor i64 %.lobit121.3, %214, !dbg !45
  %216 = sdiv i64 %215, 3, !dbg !46
  %217 = xor i64 %216, %.lobit121.3, !dbg !47
  %218 = srem i64 %214, 3, !dbg !48
  %219 = icmp slt i64 %218, 0, !dbg !49
  %220 = add nuw nsw i64 %218, 3, !dbg !50
  %221 = select i1 %219, i64 %220, i64 %218, !dbg !51
  %222 = mul nsw i64 %210, 9, !dbg !52
  %223 = add nsw i64 %222, %132, !dbg !53
  %224 = mul nsw i64 %217, 3, !dbg !54
  %225 = add nsw i64 %223, %221, !dbg !55
  %226 = add i64 %225, %224, !dbg !56
  %227 = getelementptr float, float* %1, i64 %226, !dbg !57
  %228 = bitcast float* %227 to i32*, !dbg !58
  %229 = load i32, i32* %228, align 4, !dbg !58
  %230 = insertelement <2 x i32> %115, i32 %44, i32 1, !dbg !62
  %231 = insertelement <2 x i32> %116, i32 %48, i32 1, !dbg !63
  %232 = trunc i64 %129 to i32, !dbg !64
  %233 = add i32 %39, %232, !dbg !65
  %234 = shl nsw i32 %99, 7, !dbg !22
  %235 = add i32 %234, %43, !dbg !22
  %236 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %235, !dbg !66
  %237 = bitcast float addrspace(3)* %236 to i32 addrspace(3)*, !dbg !67
  store i32 %154, i32 addrspace(3)* %237, align 16, !dbg !67
  %238 = or i32 %235, 1, !dbg !68
  %239 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %238, !dbg !66
  %240 = bitcast float addrspace(3)* %239 to i32 addrspace(3)*, !dbg !67
  store i32 %179, i32 addrspace(3)* %240, align 4, !dbg !67
  %241 = or i32 %235, 2, !dbg !68
  %242 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %241, !dbg !66
  %243 = bitcast float addrspace(3)* %242 to i32 addrspace(3)*, !dbg !67
  store i32 %204, i32 addrspace(3)* %243, align 8, !dbg !67
  %244 = or i32 %235, 3, !dbg !68
  %245 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %244, !dbg !66
  %246 = bitcast float addrspace(3)* %245 to i32 addrspace(3)*, !dbg !67
  %247 = bitcast float addrspace(3)* %245 to i32 addrspace(3)*, !dbg !67
  store i32 %229, i32 addrspace(3)* %247, align 4, !dbg !67
  %.lobit113 = ashr i32 %100, 31, !dbg !22
  %248 = xor i32 %.lobit113, %100, !dbg !22
  %249 = sdiv i32 %248, 9, !dbg !22
  %250 = xor i32 %249, %.lobit113, !dbg !22
  %251 = sext i32 %250 to i64, !dbg !22
  %252 = srem i64 %45, 9, !dbg !22
  %253 = icmp slt i64 %252, 0, !dbg !22
  %254 = add nsw i64 %252, 9, !dbg !22
  %255 = select i1 %253, i64 %254, i64 %252, !dbg !22
  %.lobit115 = ashr i64 %255, 63, !dbg !22
  %256 = xor i64 %.lobit115, %255, !dbg !22
  %257 = sdiv i64 %256, 3, !dbg !22
  %258 = xor i64 %257, %.lobit115, !dbg !22
  %259 = srem i64 %255, 3, !dbg !22
  %260 = icmp slt i64 %259, 0, !dbg !22
  %261 = add nuw nsw i64 %259, 3, !dbg !22
  %262 = select i1 %260, i64 %261, i64 %259, !dbg !22
  %263 = shl nsw i64 %251, 10, !dbg !22
  %264 = add nsw i64 %263, %262, !dbg !22
  %265 = sext i32 %48 to i64, !dbg !69
  %.lobit111 = ashr i32 %48, 31, !dbg !70
  %266 = xor i32 %.lobit111, %48, !dbg !70
  %267 = sdiv i32 %266, 900, !dbg !71
  %268 = xor i32 %267, %.lobit111, !dbg !72
  %269 = sext i32 %268 to i64, !dbg !72
  %270 = srem i64 %265, 900, !dbg !73
  %271 = icmp slt i64 %270, 0, !dbg !74
  %272 = add nsw i64 %270, 900, !dbg !75
  %273 = select i1 %271, i64 %272, i64 %270, !dbg !76
  %.lobit117 = ashr i64 %273, 63, !dbg !77
  %274 = xor i64 %.lobit117, %273, !dbg !77
  %275 = sdiv i64 %274, 30, !dbg !78
  %276 = xor i64 %275, %.lobit117, !dbg !79
  %277 = add nsw i64 %276, %258, !dbg !80
  %278 = srem i64 %273, 30, !dbg !81
  %279 = icmp slt i64 %278, 0, !dbg !82
  %280 = add nuw nsw i64 %278, 30, !dbg !83
  %281 = select i1 %279, i64 %280, i64 %278, !dbg !84
  %282 = shl nsw i64 %269, 13, !dbg !85
  %283 = shl i64 %277, 5, !dbg !86
  %284 = add nsw i64 %264, %282, !dbg !87
  %285 = add nsw i64 %284, %281, !dbg !88
  %286 = add i64 %285, %283, !dbg !89
  %287 = getelementptr float, float* %12, i64 %286, !dbg !90
  %288 = bitcast float* %287 to i32*, !dbg !91
  %289 = load i32, i32* %288, align 4, !dbg !91
  %290 = or i32 %48, 1, !dbg !92
  %291 = sext i32 %290 to i64, !dbg !69
  %.lobit111.1 = ashr i32 %48, 31, !dbg !70
  %292 = xor i32 %.lobit111.1, %290, !dbg !70
  %293 = sdiv i32 %292, 900, !dbg !71
  %294 = xor i32 %293, %.lobit111.1, !dbg !72
  %295 = sext i32 %294 to i64, !dbg !72
  %296 = srem i64 %291, 900, !dbg !73
  %297 = icmp slt i64 %296, 0, !dbg !74
  %298 = add nsw i64 %296, 900, !dbg !75
  %299 = select i1 %297, i64 %298, i64 %296, !dbg !76
  %.lobit117.1 = ashr i64 %299, 63, !dbg !77
  %300 = xor i64 %.lobit117.1, %299, !dbg !77
  %301 = sdiv i64 %300, 30, !dbg !78
  %302 = xor i64 %301, %.lobit117.1, !dbg !79
  %303 = add nsw i64 %302, %258, !dbg !80
  %304 = srem i64 %299, 30, !dbg !81
  %305 = icmp slt i64 %304, 0, !dbg !82
  %306 = add nuw nsw i64 %304, 30, !dbg !83
  %307 = select i1 %305, i64 %306, i64 %304, !dbg !84
  %308 = shl nsw i64 %295, 13, !dbg !85
  %309 = shl i64 %303, 5, !dbg !86
  %310 = add nsw i64 %264, %308, !dbg !87
  %311 = add nsw i64 %310, %307, !dbg !88
  %312 = add i64 %311, %309, !dbg !89
  %313 = getelementptr float, float* %12, i64 %312, !dbg !90
  %314 = bitcast float* %313 to i32*, !dbg !91
  %315 = load i32, i32* %314, align 4, !dbg !91
  %316 = or i32 %48, 2, !dbg !92
  %317 = sext i32 %316 to i64, !dbg !69
  %.lobit111.2 = ashr i32 %48, 31, !dbg !70
  %318 = xor i32 %.lobit111.2, %316, !dbg !70
  %319 = sdiv i32 %318, 900, !dbg !71
  %320 = xor i32 %319, %.lobit111.2, !dbg !72
  %321 = sext i32 %320 to i64, !dbg !72
  %322 = srem i64 %317, 900, !dbg !73
  %323 = icmp slt i64 %322, 0, !dbg !74
  %324 = add nsw i64 %322, 900, !dbg !75
  %325 = select i1 %323, i64 %324, i64 %322, !dbg !76
  %.lobit117.2 = ashr i64 %325, 63, !dbg !77
  %326 = xor i64 %.lobit117.2, %325, !dbg !77
  %327 = sdiv i64 %326, 30, !dbg !78
  %328 = xor i64 %327, %.lobit117.2, !dbg !79
  %329 = add nsw i64 %328, %258, !dbg !80
  %330 = srem i64 %325, 30, !dbg !81
  %331 = icmp slt i64 %330, 0, !dbg !82
  %332 = add nuw nsw i64 %330, 30, !dbg !83
  %333 = select i1 %331, i64 %332, i64 %330, !dbg !84
  %334 = shl nsw i64 %321, 13, !dbg !85
  %335 = shl i64 %329, 5, !dbg !86
  %336 = add nsw i64 %264, %334, !dbg !87
  %337 = add nsw i64 %336, %333, !dbg !88
  %338 = add i64 %337, %335, !dbg !89
  %339 = getelementptr float, float* %12, i64 %338, !dbg !90
  %340 = bitcast float* %339 to i32*, !dbg !91
  %341 = load i32, i32* %340, align 4, !dbg !91
  %342 = or i32 %48, 3, !dbg !92
  %343 = sext i32 %342 to i64, !dbg !69
  %.lobit111.3 = ashr i32 %48, 31, !dbg !70
  %344 = xor i32 %.lobit111.3, %342, !dbg !70
  %345 = sdiv i32 %344, 900, !dbg !71
  %346 = xor i32 %345, %.lobit111.3, !dbg !72
  %347 = sext i32 %346 to i64, !dbg !72
  %348 = srem i64 %343, 900, !dbg !73
  %349 = icmp slt i64 %348, 0, !dbg !74
  %350 = add nsw i64 %348, 900, !dbg !75
  %351 = select i1 %349, i64 %350, i64 %348, !dbg !76
  %.lobit117.3 = ashr i64 %351, 63, !dbg !77
  %352 = xor i64 %.lobit117.3, %351, !dbg !77
  %353 = sdiv i64 %352, 30, !dbg !78
  %354 = xor i64 %353, %.lobit117.3, !dbg !79
  %355 = add nsw i64 %354, %258, !dbg !80
  %356 = srem i64 %351, 30, !dbg !81
  %357 = icmp slt i64 %356, 0, !dbg !82
  %358 = add nuw nsw i64 %356, 30, !dbg !83
  %359 = select i1 %357, i64 %358, i64 %356, !dbg !84
  %360 = shl nsw i64 %347, 13, !dbg !85
  %361 = shl i64 %355, 5, !dbg !86
  %362 = add nsw i64 %264, %360, !dbg !87
  %363 = add nsw i64 %362, %359, !dbg !88
  %364 = add i64 %363, %361, !dbg !89
  %365 = getelementptr float, float* %12, i64 %364, !dbg !90
  %366 = bitcast float* %365 to i32*, !dbg !91
  %367 = load i32, i32* %366, align 4, !dbg !91
  %368 = shl i32 %100, 7, !dbg !22
  %369 = add i32 %47, 2048, !dbg !22
  %370 = add i32 %369, %368, !dbg !22
  %371 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %370, !dbg !93
  %372 = bitcast float addrspace(3)* %371 to i32 addrspace(3)*, !dbg !94
  store i32 %289, i32 addrspace(3)* %372, align 16, !dbg !94
  %373 = or i32 %370, 1, !dbg !95
  %374 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %373, !dbg !93
  %375 = bitcast float addrspace(3)* %374 to i32 addrspace(3)*, !dbg !94
  store i32 %315, i32 addrspace(3)* %375, align 4, !dbg !94
  %376 = or i32 %370, 2, !dbg !95
  %377 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %376, !dbg !93
  %378 = bitcast float addrspace(3)* %377 to i32 addrspace(3)*, !dbg !94
  store i32 %341, i32 addrspace(3)* %378, align 8, !dbg !94
  %379 = or i32 %370, 3, !dbg !95
  %380 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %379, !dbg !93
  %381 = bitcast float addrspace(3)* %380 to i32 addrspace(3)*, !dbg !94
  %382 = bitcast float addrspace(3)* %380 to i32 addrspace(3)*, !dbg !94
  store i32 %367, i32 addrspace(3)* %382, align 4, !dbg !94
  %383 = add i32 %232, 2048, !dbg !22
  %384 = add i32 %43, 1024, !dbg !22
  %385 = add i32 %384, %234, !dbg !22
  %386 = add i32 %47, 3072, !dbg !22
  %387 = add i32 %386, %368, !dbg !22
  %388 = add i32 %126, 1024, !dbg !22
  %389 = add i32 %232, 3072, !dbg !22
  %390 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %385, !dbg !22
  %391 = bitcast float addrspace(3)* %390 to i32 addrspace(3)*, !dbg !22
  %392 = or i32 %385, 1, !dbg !22
  %393 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %392, !dbg !22
  %394 = bitcast float addrspace(3)* %393 to i32 addrspace(3)*, !dbg !22
  %395 = or i32 %385, 2, !dbg !22
  %396 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %395, !dbg !22
  %397 = bitcast float addrspace(3)* %396 to i32 addrspace(3)*, !dbg !22
  %398 = or i32 %385, 3, !dbg !22
  %399 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %398, !dbg !22
  %400 = bitcast float addrspace(3)* %399 to i32 addrspace(3)*, !dbg !22
  %401 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %387, !dbg !22
  %402 = bitcast float addrspace(3)* %401 to i32 addrspace(3)*, !dbg !22
  %403 = or i32 %387, 1, !dbg !22
  %404 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %403, !dbg !22
  %405 = bitcast float addrspace(3)* %404 to i32 addrspace(3)*, !dbg !22
  %406 = or i32 %387, 2, !dbg !22
  %407 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %406, !dbg !22
  %408 = bitcast float addrspace(3)* %407 to i32 addrspace(3)*, !dbg !22
  %409 = or i32 %387, 3, !dbg !22
  %410 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %409, !dbg !22
  %411 = bitcast float addrspace(3)* %410 to i32 addrspace(3)*, !dbg !22
  %412 = bitcast float addrspace(3)* %236 to i32 addrspace(3)*, !dbg !22
  %413 = bitcast float addrspace(3)* %239 to i32 addrspace(3)*, !dbg !22
  %414 = bitcast float addrspace(3)* %242 to i32 addrspace(3)*, !dbg !22
  %415 = bitcast float addrspace(3)* %371 to i32 addrspace(3)*, !dbg !22
  %416 = bitcast float addrspace(3)* %374 to i32 addrspace(3)*, !dbg !22
  %417 = bitcast float addrspace(3)* %377 to i32 addrspace(3)*, !dbg !22
  br label %.critedge125, !dbg !96

.critedge125:                                     ; preds = %.critedge, %.preheader219
  %.sroa.0177.0 = phi <2 x i32> [ %864, %.preheader219 ], [ %230, %.critedge ], !dbg !22
  %.sroa.0159.0 = phi <2 x i32> [ %954, %.preheader219 ], [ %231, %.critedge ], !dbg !22
  %418 = phi i64 [ %955, %.preheader219 ], [ 0, %.critedge ]
  fence syncscope("workgroup") release, !dbg !22
  tail call void @llvm.amdgcn.s.barrier(), !dbg !22
  fence syncscope("workgroup") acquire, !dbg !22
  %exitcond308 = icmp eq i64 %418, 4, !dbg !97
  br i1 %exitcond308, label %.preheader208, label %.critedge126, !dbg !96

.preheader208:                                    ; preds = %.critedge125
  %419 = load <64 x float>, <64 x float> addrspace(5)* %33, align 4
  %reorder_shuffle = shufflevector <64 x float> %419, <64 x float> undef, <64 x i32> <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %.preheader207, !dbg !98

.critedge126:                                     ; preds = %.critedge125
  %420 = extractelement <2 x i32> %.sroa.0177.0, i32 0, !dbg !99
  %421 = add i32 %420, 8, !dbg !100
  %422 = extractelement <2 x i32> %.sroa.0177.0, i32 1, !dbg !101
  %423 = sext i32 %422 to i64, !dbg !22
  %424 = mul nsw i64 %423, 72, !dbg !22
  %425 = sext i32 %421 to i64, !dbg !102
  %.lobit107 = ashr i32 %421, 31, !dbg !103
  %426 = xor i32 %.lobit107, %421, !dbg !103
  %427 = sdiv i32 %426, 9, !dbg !104
  %428 = xor i32 %427, %.lobit107, !dbg !105
  %429 = sext i32 %428 to i64, !dbg !105
  %430 = srem i64 %425, 9, !dbg !106
  %431 = icmp slt i64 %430, 0, !dbg !107
  %432 = add nsw i64 %430, 9, !dbg !108
  %433 = select i1 %431, i64 %432, i64 %430, !dbg !109
  %.lobit109 = ashr i64 %433, 63, !dbg !110
  %434 = xor i64 %.lobit109, %433, !dbg !110
  %435 = sdiv i64 %434, 3, !dbg !111
  %436 = xor i64 %435, %.lobit109, !dbg !112
  %437 = srem i64 %433, 3, !dbg !113
  %438 = icmp slt i64 %437, 0, !dbg !114
  %439 = add nuw nsw i64 %437, 3, !dbg !115
  %440 = select i1 %438, i64 %439, i64 %437, !dbg !116
  %441 = mul nsw i64 %429, 9, !dbg !117
  %442 = add nsw i64 %441, %424, !dbg !118
  %443 = mul nsw i64 %436, 3, !dbg !119
  %444 = add nsw i64 %442, %440, !dbg !120
  %445 = add i64 %444, %443, !dbg !121
  %446 = getelementptr float, float* %1, i64 %445, !dbg !122
  %447 = bitcast float* %446 to i32*, !dbg !123
  %448 = load i32, i32* %447, align 4, !dbg !123
  %449 = add i32 %420, 9, !dbg !124
  %450 = sext i32 %449 to i64, !dbg !102
  %.lobit107.1 = ashr i32 %449, 31, !dbg !103
  %451 = xor i32 %.lobit107.1, %449, !dbg !103
  %452 = sdiv i32 %451, 9, !dbg !104
  %453 = xor i32 %452, %.lobit107.1, !dbg !105
  %454 = sext i32 %453 to i64, !dbg !105
  %455 = srem i64 %450, 9, !dbg !106
  %456 = icmp slt i64 %455, 0, !dbg !107
  %457 = add nsw i64 %455, 9, !dbg !108
  %458 = select i1 %456, i64 %457, i64 %455, !dbg !109
  %.lobit109.1 = ashr i64 %458, 63, !dbg !110
  %459 = xor i64 %.lobit109.1, %458, !dbg !110
  %460 = sdiv i64 %459, 3, !dbg !111
  %461 = xor i64 %460, %.lobit109.1, !dbg !112
  %462 = srem i64 %458, 3, !dbg !113
  %463 = icmp slt i64 %462, 0, !dbg !114
  %464 = add nuw nsw i64 %462, 3, !dbg !115
  %465 = select i1 %463, i64 %464, i64 %462, !dbg !116
  %466 = mul nsw i64 %454, 9, !dbg !117
  %467 = add nsw i64 %466, %424, !dbg !118
  %468 = mul nsw i64 %461, 3, !dbg !119
  %469 = add nsw i64 %467, %465, !dbg !120
  %470 = add i64 %469, %468, !dbg !121
  %471 = getelementptr float, float* %1, i64 %470, !dbg !122
  %472 = bitcast float* %471 to i32*, !dbg !123
  %473 = load i32, i32* %472, align 4, !dbg !123
  %474 = add i32 %420, 10, !dbg !124
  %475 = sext i32 %474 to i64, !dbg !102
  %.lobit107.2 = ashr i32 %474, 31, !dbg !103
  %476 = xor i32 %.lobit107.2, %474, !dbg !103
  %477 = sdiv i32 %476, 9, !dbg !104
  %478 = xor i32 %477, %.lobit107.2, !dbg !105
  %479 = sext i32 %478 to i64, !dbg !105
  %480 = srem i64 %475, 9, !dbg !106
  %481 = icmp slt i64 %480, 0, !dbg !107
  %482 = add nsw i64 %480, 9, !dbg !108
  %483 = select i1 %481, i64 %482, i64 %480, !dbg !109
  %.lobit109.2 = ashr i64 %483, 63, !dbg !110
  %484 = xor i64 %.lobit109.2, %483, !dbg !110
  %485 = sdiv i64 %484, 3, !dbg !111
  %486 = xor i64 %485, %.lobit109.2, !dbg !112
  %487 = srem i64 %483, 3, !dbg !113
  %488 = icmp slt i64 %487, 0, !dbg !114
  %489 = add nuw nsw i64 %487, 3, !dbg !115
  %490 = select i1 %488, i64 %489, i64 %487, !dbg !116
  %491 = mul nsw i64 %479, 9, !dbg !117
  %492 = add nsw i64 %491, %424, !dbg !118
  %493 = mul nsw i64 %486, 3, !dbg !119
  %494 = add nsw i64 %492, %490, !dbg !120
  %495 = add i64 %494, %493, !dbg !121
  %496 = getelementptr float, float* %1, i64 %495, !dbg !122
  %497 = bitcast float* %496 to i32*, !dbg !123
  %498 = load i32, i32* %497, align 4, !dbg !123
  %499 = add i32 %420, 11, !dbg !124
  %500 = sext i32 %499 to i64, !dbg !102
  %.lobit107.3 = ashr i32 %499, 31, !dbg !103
  %501 = xor i32 %.lobit107.3, %499, !dbg !103
  %502 = sdiv i32 %501, 9, !dbg !104
  %503 = xor i32 %502, %.lobit107.3, !dbg !105
  %504 = sext i32 %503 to i64, !dbg !105
  %505 = srem i64 %500, 9, !dbg !106
  %506 = icmp slt i64 %505, 0, !dbg !107
  %507 = add nsw i64 %505, 9, !dbg !108
  %508 = select i1 %506, i64 %507, i64 %505, !dbg !109
  %.lobit109.3 = ashr i64 %508, 63, !dbg !110
  %509 = xor i64 %.lobit109.3, %508, !dbg !110
  %510 = sdiv i64 %509, 3, !dbg !111
  %511 = xor i64 %510, %.lobit109.3, !dbg !112
  %512 = srem i64 %508, 3, !dbg !113
  %513 = icmp slt i64 %512, 0, !dbg !114
  %514 = add nuw nsw i64 %512, 3, !dbg !115
  %515 = select i1 %513, i64 %514, i64 %512, !dbg !116
  %516 = mul nsw i64 %504, 9, !dbg !117
  %517 = add nsw i64 %516, %424, !dbg !118
  %518 = mul nsw i64 %511, 3, !dbg !119
  %519 = add nsw i64 %517, %515, !dbg !120
  %520 = add i64 %519, %518, !dbg !121
  %521 = getelementptr float, float* %1, i64 %520, !dbg !122
  %522 = bitcast float* %521 to i32*, !dbg !123
  %523 = load i32, i32* %522, align 4, !dbg !123
  %524 = extractelement <2 x i32> %.sroa.0159.0, i32 0, !dbg !125
  %525 = add i32 %524, 8, !dbg !126
  %526 = extractelement <2 x i32> %.sroa.0159.0, i32 1, !dbg !127
  %527 = sext i32 %525 to i64, !dbg !22
  %.lobit101 = ashr i32 %525, 31, !dbg !22
  %528 = xor i32 %.lobit101, %525, !dbg !22
  %529 = sdiv i32 %528, 9, !dbg !22
  %530 = xor i32 %529, %.lobit101, !dbg !22
  %531 = sext i32 %530 to i64, !dbg !22
  %532 = srem i64 %527, 9, !dbg !22
  %533 = icmp slt i64 %532, 0, !dbg !22
  %534 = add nsw i64 %532, 9, !dbg !22
  %535 = select i1 %533, i64 %534, i64 %532, !dbg !22
  %.lobit103 = ashr i64 %535, 63, !dbg !22
  %536 = xor i64 %.lobit103, %535, !dbg !22
  %537 = sdiv i64 %536, 3, !dbg !22
  %538 = xor i64 %537, %.lobit103, !dbg !22
  %539 = srem i64 %535, 3, !dbg !22
  %540 = icmp slt i64 %539, 0, !dbg !22
  %541 = add nuw nsw i64 %539, 3, !dbg !22
  %542 = select i1 %540, i64 %541, i64 %539, !dbg !22
  %543 = shl nsw i64 %531, 10, !dbg !22
  %544 = add nsw i64 %542, %543, !dbg !22
  %545 = sext i32 %526 to i64, !dbg !128
  %.lobit99 = ashr i32 %526, 31, !dbg !129
  %546 = xor i32 %.lobit99, %526, !dbg !129
  %547 = sdiv i32 %546, 900, !dbg !130
  %548 = xor i32 %547, %.lobit99, !dbg !131
  %549 = sext i32 %548 to i64, !dbg !131
  %550 = srem i64 %545, 900, !dbg !132
  %551 = icmp slt i64 %550, 0, !dbg !133
  %552 = add nsw i64 %550, 900, !dbg !134
  %553 = select i1 %551, i64 %552, i64 %550, !dbg !135
  %.lobit105 = ashr i64 %553, 63, !dbg !136
  %554 = xor i64 %.lobit105, %553, !dbg !136
  %555 = sdiv i64 %554, 30, !dbg !137
  %556 = xor i64 %555, %.lobit105, !dbg !138
  %557 = add nsw i64 %556, %538, !dbg !139
  %558 = srem i64 %553, 30, !dbg !140
  %559 = icmp slt i64 %558, 0, !dbg !141
  %560 = add nuw nsw i64 %558, 30, !dbg !142
  %561 = select i1 %559, i64 %560, i64 %558, !dbg !143
  %562 = shl nsw i64 %549, 13, !dbg !144
  %563 = shl i64 %557, 5, !dbg !145
  %564 = add nsw i64 %544, %562, !dbg !146
  %565 = add nsw i64 %564, %561, !dbg !147
  %566 = add i64 %565, %563, !dbg !148
  %567 = getelementptr float, float* %12, i64 %566, !dbg !149
  %568 = bitcast float* %567 to i32*, !dbg !150
  %569 = load i32, i32* %568, align 4, !dbg !150
  %570 = add i32 %526, 1, !dbg !151
  %571 = sext i32 %570 to i64, !dbg !128
  %.lobit99.1 = ashr i32 %570, 31, !dbg !129
  %572 = xor i32 %.lobit99.1, %570, !dbg !129
  %573 = sdiv i32 %572, 900, !dbg !130
  %574 = xor i32 %573, %.lobit99.1, !dbg !131
  %575 = sext i32 %574 to i64, !dbg !131
  %576 = srem i64 %571, 900, !dbg !132
  %577 = icmp slt i64 %576, 0, !dbg !133
  %578 = add nsw i64 %576, 900, !dbg !134
  %579 = select i1 %577, i64 %578, i64 %576, !dbg !135
  %.lobit105.1 = ashr i64 %579, 63, !dbg !136
  %580 = xor i64 %.lobit105.1, %579, !dbg !136
  %581 = sdiv i64 %580, 30, !dbg !137
  %582 = xor i64 %581, %.lobit105.1, !dbg !138
  %583 = add nsw i64 %582, %538, !dbg !139
  %584 = srem i64 %579, 30, !dbg !140
  %585 = icmp slt i64 %584, 0, !dbg !141
  %586 = add nuw nsw i64 %584, 30, !dbg !142
  %587 = select i1 %585, i64 %586, i64 %584, !dbg !143
  %588 = shl nsw i64 %575, 13, !dbg !144
  %589 = shl i64 %583, 5, !dbg !145
  %590 = add nsw i64 %544, %588, !dbg !146
  %591 = add nsw i64 %590, %587, !dbg !147
  %592 = add i64 %591, %589, !dbg !148
  %593 = getelementptr float, float* %12, i64 %592, !dbg !149
  %594 = bitcast float* %593 to i32*, !dbg !150
  %595 = load i32, i32* %594, align 4, !dbg !150
  %596 = add i32 %526, 2, !dbg !151
  %597 = sext i32 %596 to i64, !dbg !128
  %.lobit99.2 = ashr i32 %596, 31, !dbg !129
  %598 = xor i32 %.lobit99.2, %596, !dbg !129
  %599 = sdiv i32 %598, 900, !dbg !130
  %600 = xor i32 %599, %.lobit99.2, !dbg !131
  %601 = sext i32 %600 to i64, !dbg !131
  %602 = srem i64 %597, 900, !dbg !132
  %603 = icmp slt i64 %602, 0, !dbg !133
  %604 = add nsw i64 %602, 900, !dbg !134
  %605 = select i1 %603, i64 %604, i64 %602, !dbg !135
  %.lobit105.2 = ashr i64 %605, 63, !dbg !136
  %606 = xor i64 %.lobit105.2, %605, !dbg !136
  %607 = sdiv i64 %606, 30, !dbg !137
  %608 = xor i64 %607, %.lobit105.2, !dbg !138
  %609 = add nsw i64 %608, %538, !dbg !139
  %610 = srem i64 %605, 30, !dbg !140
  %611 = icmp slt i64 %610, 0, !dbg !141
  %612 = add nuw nsw i64 %610, 30, !dbg !142
  %613 = select i1 %611, i64 %612, i64 %610, !dbg !143
  %614 = shl nsw i64 %601, 13, !dbg !144
  %615 = shl i64 %609, 5, !dbg !145
  %616 = add nsw i64 %544, %614, !dbg !146
  %617 = add nsw i64 %616, %613, !dbg !147
  %618 = add i64 %617, %615, !dbg !148
  %619 = getelementptr float, float* %12, i64 %618, !dbg !149
  %620 = bitcast float* %619 to i32*, !dbg !150
  %621 = load i32, i32* %620, align 4, !dbg !150
  %622 = add i32 %526, 3, !dbg !151
  %623 = sext i32 %622 to i64, !dbg !128
  %.lobit99.3 = ashr i32 %622, 31, !dbg !129
  %624 = xor i32 %.lobit99.3, %622, !dbg !129
  %625 = sdiv i32 %624, 900, !dbg !130
  %626 = xor i32 %625, %.lobit99.3, !dbg !131
  %627 = sext i32 %626 to i64, !dbg !131
  %628 = srem i64 %623, 900, !dbg !132
  %629 = icmp slt i64 %628, 0, !dbg !133
  %630 = add nsw i64 %628, 900, !dbg !134
  %631 = select i1 %629, i64 %630, i64 %628, !dbg !135
  %.lobit105.3 = ashr i64 %631, 63, !dbg !136
  %632 = xor i64 %.lobit105.3, %631, !dbg !136
  %633 = sdiv i64 %632, 30, !dbg !137
  %634 = xor i64 %633, %.lobit105.3, !dbg !138
  %635 = add nsw i64 %634, %538, !dbg !139
  %636 = srem i64 %631, 30, !dbg !140
  %637 = icmp slt i64 %636, 0, !dbg !141
  %638 = add nuw nsw i64 %636, 30, !dbg !142
  %639 = select i1 %637, i64 %638, i64 %636, !dbg !143
  %640 = shl nsw i64 %627, 13, !dbg !144
  %641 = shl i64 %635, 5, !dbg !145
  %642 = add nsw i64 %544, %640, !dbg !146
  %643 = add nsw i64 %642, %639, !dbg !147
  %644 = add i64 %643, %641, !dbg !148
  %645 = getelementptr float, float* %12, i64 %644, !dbg !149
  %646 = bitcast float* %645 to i32*, !dbg !150
  %647 = load i32, i32* %646, align 4, !dbg !150
  %648 = load <64 x float>, <64 x float> addrspace(5)* %33, align 4
  %reorder_shuffle897 = shufflevector <64 x float> %648, <64 x float> undef, <64 x i32> <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %.preheader218, !dbg !152

.preheader220:                                    ; preds = %.preheader218
  %649 = extractelement <64 x float> %888, i32 63, !dbg !22
  store float %649, float addrspace(5)* %.sub, align 4, !dbg !22
  %650 = extractelement <64 x float> %888, i32 62, !dbg !22
  store float %650, float addrspace(5)* %101, align 4, !dbg !22
  %651 = extractelement <64 x float> %888, i32 61, !dbg !22
  store float %651, float addrspace(5)* %49, align 4, !dbg !22
  %652 = extractelement <64 x float> %888, i32 60, !dbg !22
  store float %652, float addrspace(5)* %102, align 4, !dbg !22
  %653 = extractelement <64 x float> %888, i32 59, !dbg !22
  store float %653, float addrspace(5)* %50, align 4, !dbg !22
  %654 = extractelement <64 x float> %888, i32 58, !dbg !22
  store float %654, float addrspace(5)* %103, align 4, !dbg !22
  %655 = extractelement <64 x float> %888, i32 57, !dbg !22
  store float %655, float addrspace(5)* %51, align 4, !dbg !22
  %656 = extractelement <64 x float> %888, i32 56, !dbg !22
  store float %656, float addrspace(5)* %104, align 4, !dbg !22
  %657 = extractelement <64 x float> %888, i32 55, !dbg !22
  store float %657, float addrspace(5)* %52, align 4, !dbg !22
  %658 = extractelement <64 x float> %888, i32 54, !dbg !22
  store float %658, float addrspace(5)* %105, align 4, !dbg !22
  %659 = extractelement <64 x float> %888, i32 53, !dbg !22
  store float %659, float addrspace(5)* %53, align 4, !dbg !22
  %660 = extractelement <64 x float> %888, i32 52, !dbg !22
  store float %660, float addrspace(5)* %106, align 4, !dbg !22
  %661 = extractelement <64 x float> %888, i32 51, !dbg !22
  store float %661, float addrspace(5)* %54, align 4, !dbg !22
  %662 = extractelement <64 x float> %888, i32 50, !dbg !22
  store float %662, float addrspace(5)* %107, align 4, !dbg !22
  %663 = extractelement <64 x float> %888, i32 49, !dbg !22
  store float %663, float addrspace(5)* %55, align 4, !dbg !22
  %664 = extractelement <64 x float> %888, i32 48, !dbg !22
  store float %664, float addrspace(5)* %108, align 4, !dbg !22
  %665 = extractelement <64 x float> %888, i32 47, !dbg !22
  store float %665, float addrspace(5)* %56, align 4, !dbg !22
  %666 = extractelement <64 x float> %888, i32 46, !dbg !22
  store float %666, float addrspace(5)* %109, align 4, !dbg !22
  %667 = extractelement <64 x float> %888, i32 45, !dbg !22
  store float %667, float addrspace(5)* %57, align 4, !dbg !22
  %668 = extractelement <64 x float> %888, i32 44, !dbg !22
  store float %668, float addrspace(5)* %110, align 4, !dbg !22
  %669 = extractelement <64 x float> %888, i32 43, !dbg !22
  store float %669, float addrspace(5)* %58, align 4, !dbg !22
  %670 = extractelement <64 x float> %888, i32 42, !dbg !22
  store float %670, float addrspace(5)* %111, align 4, !dbg !22
  %671 = extractelement <64 x float> %888, i32 41, !dbg !22
  store float %671, float addrspace(5)* %59, align 4, !dbg !22
  %672 = extractelement <64 x float> %888, i32 40, !dbg !22
  store float %672, float addrspace(5)* %112, align 4, !dbg !22
  %673 = extractelement <64 x float> %888, i32 39, !dbg !22
  store float %673, float addrspace(5)* %60, align 4, !dbg !22
  %674 = extractelement <64 x float> %888, i32 38, !dbg !22
  store float %674, float addrspace(5)* %113, align 4, !dbg !22
  %675 = extractelement <64 x float> %888, i32 37, !dbg !22
  store float %675, float addrspace(5)* %61, align 4, !dbg !22
  %676 = extractelement <64 x float> %888, i32 36, !dbg !22
  store float %676, float addrspace(5)* %114, align 4, !dbg !22
  %677 = extractelement <64 x float> %888, i32 35, !dbg !22
  store float %677, float addrspace(5)* %62, align 4, !dbg !22
  %678 = extractelement <64 x float> %888, i32 34, !dbg !22
  store float %678, float addrspace(5)* %63, align 4, !dbg !22
  %679 = extractelement <64 x float> %888, i32 33, !dbg !22
  store float %679, float addrspace(5)* %64, align 4, !dbg !22
  %680 = extractelement <64 x float> %888, i32 32, !dbg !22
  store float %680, float addrspace(5)* %65, align 4, !dbg !22
  %681 = extractelement <64 x float> %888, i32 31, !dbg !22
  store float %681, float addrspace(5)* %66, align 4, !dbg !22
  %682 = extractelement <64 x float> %888, i32 30, !dbg !22
  store float %682, float addrspace(5)* %67, align 4, !dbg !22
  %683 = extractelement <64 x float> %888, i32 29, !dbg !22
  store float %683, float addrspace(5)* %68, align 4, !dbg !22
  %684 = extractelement <64 x float> %888, i32 28, !dbg !22
  store float %684, float addrspace(5)* %69, align 4, !dbg !22
  %685 = extractelement <64 x float> %888, i32 27, !dbg !22
  store float %685, float addrspace(5)* %70, align 4, !dbg !22
  %686 = extractelement <64 x float> %888, i32 26, !dbg !22
  store float %686, float addrspace(5)* %71, align 4, !dbg !22
  %687 = extractelement <64 x float> %888, i32 25, !dbg !22
  store float %687, float addrspace(5)* %72, align 4, !dbg !22
  %688 = extractelement <64 x float> %888, i32 24, !dbg !22
  store float %688, float addrspace(5)* %73, align 4, !dbg !22
  %689 = extractelement <64 x float> %888, i32 23, !dbg !22
  store float %689, float addrspace(5)* %74, align 4, !dbg !22
  %690 = extractelement <64 x float> %888, i32 22, !dbg !22
  store float %690, float addrspace(5)* %75, align 4, !dbg !22
  %691 = extractelement <64 x float> %888, i32 21, !dbg !22
  store float %691, float addrspace(5)* %76, align 4, !dbg !22
  %692 = extractelement <64 x float> %888, i32 20, !dbg !22
  store float %692, float addrspace(5)* %77, align 4, !dbg !22
  %693 = extractelement <64 x float> %888, i32 19, !dbg !22
  store float %693, float addrspace(5)* %78, align 4, !dbg !22
  %694 = extractelement <64 x float> %888, i32 18, !dbg !22
  store float %694, float addrspace(5)* %79, align 4, !dbg !22
  %695 = extractelement <64 x float> %888, i32 17, !dbg !22
  store float %695, float addrspace(5)* %80, align 4, !dbg !22
  %696 = extractelement <64 x float> %888, i32 16, !dbg !22
  store float %696, float addrspace(5)* %81, align 4, !dbg !22
  %697 = extractelement <64 x float> %888, i32 15, !dbg !22
  store float %697, float addrspace(5)* %82, align 4, !dbg !22
  %698 = extractelement <64 x float> %888, i32 14, !dbg !22
  store float %698, float addrspace(5)* %83, align 4, !dbg !22
  %699 = extractelement <64 x float> %888, i32 13, !dbg !22
  store float %699, float addrspace(5)* %84, align 4, !dbg !22
  %700 = extractelement <64 x float> %888, i32 12, !dbg !22
  store float %700, float addrspace(5)* %85, align 4, !dbg !22
  %701 = extractelement <64 x float> %888, i32 11, !dbg !22
  store float %701, float addrspace(5)* %86, align 4, !dbg !22
  %702 = extractelement <64 x float> %888, i32 10, !dbg !22
  store float %702, float addrspace(5)* %87, align 4, !dbg !22
  %703 = extractelement <64 x float> %888, i32 9, !dbg !22
  store float %703, float addrspace(5)* %88, align 4, !dbg !22
  %704 = extractelement <64 x float> %888, i32 8, !dbg !22
  store float %704, float addrspace(5)* %89, align 4, !dbg !22
  %705 = extractelement <64 x float> %888, i32 7, !dbg !22
  store float %705, float addrspace(5)* %90, align 4, !dbg !22
  %706 = extractelement <64 x float> %888, i32 6, !dbg !22
  store float %706, float addrspace(5)* %91, align 4, !dbg !22
  %707 = extractelement <64 x float> %888, i32 5, !dbg !22
  store float %707, float addrspace(5)* %92, align 4, !dbg !22
  %708 = extractelement <64 x float> %888, i32 4, !dbg !22
  store float %708, float addrspace(5)* %93, align 4, !dbg !22
  %709 = extractelement <64 x float> %888, i32 3, !dbg !22
  store float %709, float addrspace(5)* %94, align 4, !dbg !22
  %710 = extractelement <64 x float> %888, i32 2, !dbg !22
  store float %710, float addrspace(5)* %95, align 4, !dbg !22
  %711 = extractelement <64 x float> %888, i32 1, !dbg !22
  store float %711, float addrspace(5)* %96, align 4, !dbg !22
  %712 = extractelement <64 x float> %888, i32 0, !dbg !22
  store float %712, float addrspace(5)* %97, align 4, !dbg !22
  store i32 %448, i32 addrspace(3)* %391, align 16, !dbg !153
  store i32 %473, i32 addrspace(3)* %394, align 4, !dbg !153
  store i32 %498, i32 addrspace(3)* %397, align 8, !dbg !153
  store i32 %523, i32 addrspace(3)* %400, align 4, !dbg !153
  store i32 %569, i32 addrspace(3)* %402, align 16, !dbg !154
  store i32 %595, i32 addrspace(3)* %405, align 4, !dbg !154
  store i32 %621, i32 addrspace(3)* %408, align 8, !dbg !154
  store i32 %647, i32 addrspace(3)* %411, align 4, !dbg !154
  fence syncscope("workgroup") release, !dbg !155
  tail call void @llvm.amdgcn.s.barrier(), !dbg !155
  fence syncscope("workgroup") acquire, !dbg !155
  %713 = add i32 %420, 16, !dbg !156
  %714 = sext i32 %713 to i64, !dbg !157
  %.lobit93 = ashr i32 %713, 31, !dbg !158
  %715 = xor i32 %.lobit93, %713, !dbg !158
  %716 = sdiv i32 %715, 9, !dbg !159
  %717 = xor i32 %716, %.lobit93, !dbg !160
  %718 = sext i32 %717 to i64, !dbg !160
  %719 = srem i64 %714, 9, !dbg !161
  %720 = icmp slt i64 %719, 0, !dbg !162
  %721 = add nsw i64 %719, 9, !dbg !163
  %722 = select i1 %720, i64 %721, i64 %719, !dbg !164
  %.lobit95 = ashr i64 %722, 63, !dbg !165
  %723 = xor i64 %.lobit95, %722, !dbg !165
  %724 = sdiv i64 %723, 3, !dbg !166
  %725 = xor i64 %724, %.lobit95, !dbg !167
  %726 = srem i64 %722, 3, !dbg !168
  %727 = icmp slt i64 %726, 0, !dbg !169
  %728 = add nuw nsw i64 %726, 3, !dbg !170
  %729 = select i1 %727, i64 %728, i64 %726, !dbg !171
  %730 = mul nsw i64 %718, 9, !dbg !172
  %731 = add nsw i64 %730, %424, !dbg !173
  %732 = mul nsw i64 %725, 3, !dbg !174
  %733 = add nsw i64 %731, %729, !dbg !175
  %734 = add i64 %733, %732, !dbg !176
  %735 = getelementptr float, float* %1, i64 %734, !dbg !177
  %736 = bitcast float* %735 to i32*, !dbg !178
  %737 = load i32, i32* %736, align 4, !dbg !178
  %738 = add i32 %420, 17, !dbg !179
  %739 = sext i32 %738 to i64, !dbg !157
  %.lobit93.1 = ashr i32 %738, 31, !dbg !158
  %740 = xor i32 %.lobit93.1, %738, !dbg !158
  %741 = sdiv i32 %740, 9, !dbg !159
  %742 = xor i32 %741, %.lobit93.1, !dbg !160
  %743 = sext i32 %742 to i64, !dbg !160
  %744 = srem i64 %739, 9, !dbg !161
  %745 = icmp slt i64 %744, 0, !dbg !162
  %746 = add nsw i64 %744, 9, !dbg !163
  %747 = select i1 %745, i64 %746, i64 %744, !dbg !164
  %.lobit95.1 = ashr i64 %747, 63, !dbg !165
  %748 = xor i64 %.lobit95.1, %747, !dbg !165
  %749 = sdiv i64 %748, 3, !dbg !166
  %750 = xor i64 %749, %.lobit95.1, !dbg !167
  %751 = srem i64 %747, 3, !dbg !168
  %752 = icmp slt i64 %751, 0, !dbg !169
  %753 = add nuw nsw i64 %751, 3, !dbg !170
  %754 = select i1 %752, i64 %753, i64 %751, !dbg !171
  %755 = mul nsw i64 %743, 9, !dbg !172
  %756 = add nsw i64 %755, %424, !dbg !173
  %757 = mul nsw i64 %750, 3, !dbg !174
  %758 = add nsw i64 %756, %754, !dbg !175
  %759 = add i64 %758, %757, !dbg !176
  %760 = getelementptr float, float* %1, i64 %759, !dbg !177
  %761 = bitcast float* %760 to i32*, !dbg !178
  %762 = load i32, i32* %761, align 4, !dbg !178
  %763 = add i32 %420, 18, !dbg !179
  %764 = sext i32 %763 to i64, !dbg !157
  %.lobit93.2 = ashr i32 %763, 31, !dbg !158
  %765 = xor i32 %.lobit93.2, %763, !dbg !158
  %766 = sdiv i32 %765, 9, !dbg !159
  %767 = xor i32 %766, %.lobit93.2, !dbg !160
  %768 = sext i32 %767 to i64, !dbg !160
  %769 = srem i64 %764, 9, !dbg !161
  %770 = icmp slt i64 %769, 0, !dbg !162
  %771 = add nsw i64 %769, 9, !dbg !163
  %772 = select i1 %770, i64 %771, i64 %769, !dbg !164
  %.lobit95.2 = ashr i64 %772, 63, !dbg !165
  %773 = xor i64 %.lobit95.2, %772, !dbg !165
  %774 = sdiv i64 %773, 3, !dbg !166
  %775 = xor i64 %774, %.lobit95.2, !dbg !167
  %776 = srem i64 %772, 3, !dbg !168
  %777 = icmp slt i64 %776, 0, !dbg !169
  %778 = add nuw nsw i64 %776, 3, !dbg !170
  %779 = select i1 %777, i64 %778, i64 %776, !dbg !171
  %780 = mul nsw i64 %768, 9, !dbg !172
  %781 = add nsw i64 %780, %424, !dbg !173
  %782 = mul nsw i64 %775, 3, !dbg !174
  %783 = add nsw i64 %781, %779, !dbg !175
  %784 = add i64 %783, %782, !dbg !176
  %785 = getelementptr float, float* %1, i64 %784, !dbg !177
  %786 = bitcast float* %785 to i32*, !dbg !178
  %787 = load i32, i32* %786, align 4, !dbg !178
  %788 = add i32 %420, 19, !dbg !179
  %789 = sext i32 %788 to i64, !dbg !157
  %.lobit93.3 = ashr i32 %788, 31, !dbg !158
  %790 = xor i32 %.lobit93.3, %788, !dbg !158
  %791 = sdiv i32 %790, 9, !dbg !159
  %792 = xor i32 %791, %.lobit93.3, !dbg !160
  %793 = sext i32 %792 to i64, !dbg !160
  %794 = srem i64 %789, 9, !dbg !161
  %795 = icmp slt i64 %794, 0, !dbg !162
  %796 = add nsw i64 %794, 9, !dbg !163
  %797 = select i1 %795, i64 %796, i64 %794, !dbg !164
  %.lobit95.3 = ashr i64 %797, 63, !dbg !165
  %798 = xor i64 %.lobit95.3, %797, !dbg !165
  %799 = sdiv i64 %798, 3, !dbg !166
  %800 = xor i64 %799, %.lobit95.3, !dbg !167
  %801 = srem i64 %797, 3, !dbg !168
  %802 = icmp slt i64 %801, 0, !dbg !169
  %803 = add nuw nsw i64 %801, 3, !dbg !170
  %804 = select i1 %802, i64 %803, i64 %801, !dbg !171
  %805 = mul nsw i64 %793, 9, !dbg !172
  %806 = add nsw i64 %805, %424, !dbg !173
  %807 = mul nsw i64 %800, 3, !dbg !174
  %808 = add nsw i64 %806, %804, !dbg !175
  %809 = add i64 %808, %807, !dbg !176
  %810 = getelementptr float, float* %1, i64 %809, !dbg !177
  %811 = bitcast float* %810 to i32*, !dbg !178
  %812 = load i32, i32* %811, align 4, !dbg !178
  %813 = add i32 %524, 16, !dbg !180
  %814 = sext i32 %813 to i64, !dbg !22
  %.lobit87 = ashr i32 %813, 31, !dbg !22
  %815 = xor i32 %.lobit87, %813, !dbg !22
  %816 = sdiv i32 %815, 9, !dbg !22
  %817 = xor i32 %816, %.lobit87, !dbg !22
  %818 = sext i32 %817 to i64, !dbg !22
  %819 = srem i64 %814, 9, !dbg !22
  %820 = icmp slt i64 %819, 0, !dbg !22
  %821 = add nsw i64 %819, 9, !dbg !22
  %822 = select i1 %820, i64 %821, i64 %819, !dbg !22
  %.lobit89 = ashr i64 %822, 63, !dbg !22
  %823 = xor i64 %.lobit89, %822, !dbg !22
  %824 = sdiv i64 %823, 3, !dbg !22
  %825 = xor i64 %824, %.lobit89, !dbg !22
  %826 = srem i64 %822, 3, !dbg !22
  %827 = icmp slt i64 %826, 0, !dbg !22
  %828 = add nuw nsw i64 %826, 3, !dbg !22
  %829 = select i1 %827, i64 %828, i64 %826, !dbg !22
  %830 = shl nsw i64 %818, 10, !dbg !22
  %831 = add nsw i64 %829, %830, !dbg !22
  %832 = add nsw i64 %556, %825, !dbg !181
  %833 = shl i64 %832, 5, !dbg !182
  %834 = add nsw i64 %831, %562, !dbg !183
  %835 = add nsw i64 %834, %561, !dbg !184
  %836 = add i64 %835, %833, !dbg !185
  %837 = getelementptr float, float* %12, i64 %836, !dbg !186
  %838 = bitcast float* %837 to i32*, !dbg !187
  %839 = load i32, i32* %838, align 4, !dbg !187
  %840 = add nsw i64 %582, %825, !dbg !181
  %841 = shl i64 %840, 5, !dbg !182
  %842 = add nsw i64 %831, %588, !dbg !183
  %843 = add nsw i64 %842, %587, !dbg !184
  %844 = add i64 %843, %841, !dbg !185
  %845 = getelementptr float, float* %12, i64 %844, !dbg !186
  %846 = bitcast float* %845 to i32*, !dbg !187
  %847 = load i32, i32* %846, align 4, !dbg !187
  %848 = add nsw i64 %608, %825, !dbg !181
  %849 = shl i64 %848, 5, !dbg !182
  %850 = add nsw i64 %831, %614, !dbg !183
  %851 = add nsw i64 %850, %613, !dbg !184
  %852 = add i64 %851, %849, !dbg !185
  %853 = getelementptr float, float* %12, i64 %852, !dbg !186
  %854 = bitcast float* %853 to i32*, !dbg !187
  %855 = load i32, i32* %854, align 4, !dbg !187
  %856 = add nsw i64 %634, %825, !dbg !181
  %857 = shl i64 %856, 5, !dbg !182
  %858 = add nsw i64 %831, %640, !dbg !183
  %859 = add nsw i64 %858, %639, !dbg !184
  %860 = add i64 %859, %857, !dbg !185
  %861 = getelementptr float, float* %12, i64 %860, !dbg !186
  %862 = bitcast float* %861 to i32*, !dbg !187
  %863 = load i32, i32* %862, align 4, !dbg !187
  %864 = insertelement <2 x i32> %.sroa.0177.0, i32 %713, i32 0, !dbg !188
  %865 = load <64 x float>, <64 x float> addrspace(5)* %33, align 4
  %reorder_shuffle890 = shufflevector <64 x float> %865, <64 x float> undef, <64 x i32> <i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br label %.preheader215, !dbg !189

.preheader218:                                    ; preds = %.preheader218, %.critedge126
  %866 = phi i64 [ 0, %.critedge126 ], [ %889, %.preheader218 ]
  %867 = phi <64 x float> [ %reorder_shuffle897, %.critedge126 ], [ %888, %.preheader218 ], !dbg !22
  %.tr98 = trunc i64 %866 to i32, !dbg !22
  %868 = shl i32 %.tr98, 7, !dbg !22
  %869 = add i32 %868, %126, !dbg !22
  %870 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %869, !dbg !190
  %871 = bitcast float addrspace(3)* %870 to <4 x float> addrspace(3)*, !dbg !191
  %872 = load <4 x float>, <4 x float> addrspace(3)* %871, align 16, !dbg !191
  %873 = add i32 %869, 64, !dbg !22
  %874 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %873, !dbg !190
  %875 = bitcast float addrspace(3)* %874 to <4 x float> addrspace(3)*, !dbg !191
  %876 = load <4 x float>, <4 x float> addrspace(3)* %875, align 16, !dbg !191
  %877 = add i32 %383, %868, !dbg !22
  %878 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %877, !dbg !192
  %879 = bitcast float addrspace(3)* %878 to <4 x float> addrspace(3)*, !dbg !193
  %880 = load <4 x float>, <4 x float> addrspace(3)* %879, align 16, !dbg !193
  %881 = add i32 %877, 64, !dbg !22
  %882 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %881, !dbg !192
  %883 = bitcast float addrspace(3)* %882 to <4 x float> addrspace(3)*, !dbg !193
  %884 = load <4 x float>, <4 x float> addrspace(3)* %883, align 4, !dbg !193
  %885 = shufflevector <4 x float> %876, <4 x float> %872, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>, !dbg !194
  %shuffle898 = shufflevector <8 x float> %885, <8 x float> undef, <64 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>, !dbg !194
  %886 = shufflevector <4 x float> %884, <4 x float> %880, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>, !dbg !194
  %shuffle899 = shufflevector <8 x float> %886, <8 x float> undef, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !194
  %887 = fmul <64 x float> %shuffle898, %shuffle899, !dbg !194
  %888 = fadd <64 x float> %887, %867, !dbg !195
  %889 = add nuw nsw i64 %866, 1, !dbg !196
  %exitcond294 = icmp eq i64 %889, 8, !dbg !197
  br i1 %exitcond294, label %.preheader220, label %.preheader218, !dbg !152

.preheader219:                                    ; preds = %.preheader215
  %890 = extractelement <64 x float> %978, i32 63, !dbg !22
  store float %890, float addrspace(5)* %.sub, align 4, !dbg !22
  %891 = extractelement <64 x float> %978, i32 62, !dbg !22
  store float %891, float addrspace(5)* %101, align 4, !dbg !22
  %892 = extractelement <64 x float> %978, i32 61, !dbg !22
  store float %892, float addrspace(5)* %49, align 4, !dbg !22
  %893 = extractelement <64 x float> %978, i32 60, !dbg !22
  store float %893, float addrspace(5)* %102, align 4, !dbg !22
  %894 = extractelement <64 x float> %978, i32 59, !dbg !22
  store float %894, float addrspace(5)* %50, align 4, !dbg !22
  %895 = extractelement <64 x float> %978, i32 58, !dbg !22
  store float %895, float addrspace(5)* %103, align 4, !dbg !22
  %896 = extractelement <64 x float> %978, i32 57, !dbg !22
  store float %896, float addrspace(5)* %51, align 4, !dbg !22
  %897 = extractelement <64 x float> %978, i32 56, !dbg !22
  store float %897, float addrspace(5)* %104, align 4, !dbg !22
  %898 = extractelement <64 x float> %978, i32 55, !dbg !22
  store float %898, float addrspace(5)* %52, align 4, !dbg !22
  %899 = extractelement <64 x float> %978, i32 54, !dbg !22
  store float %899, float addrspace(5)* %105, align 4, !dbg !22
  %900 = extractelement <64 x float> %978, i32 53, !dbg !22
  store float %900, float addrspace(5)* %53, align 4, !dbg !22
  %901 = extractelement <64 x float> %978, i32 52, !dbg !22
  store float %901, float addrspace(5)* %106, align 4, !dbg !22
  %902 = extractelement <64 x float> %978, i32 51, !dbg !22
  store float %902, float addrspace(5)* %54, align 4, !dbg !22
  %903 = extractelement <64 x float> %978, i32 50, !dbg !22
  store float %903, float addrspace(5)* %107, align 4, !dbg !22
  %904 = extractelement <64 x float> %978, i32 49, !dbg !22
  store float %904, float addrspace(5)* %55, align 4, !dbg !22
  %905 = extractelement <64 x float> %978, i32 48, !dbg !22
  store float %905, float addrspace(5)* %108, align 4, !dbg !22
  %906 = extractelement <64 x float> %978, i32 47, !dbg !22
  store float %906, float addrspace(5)* %56, align 4, !dbg !22
  %907 = extractelement <64 x float> %978, i32 46, !dbg !22
  store float %907, float addrspace(5)* %109, align 4, !dbg !22
  %908 = extractelement <64 x float> %978, i32 45, !dbg !22
  store float %908, float addrspace(5)* %57, align 4, !dbg !22
  %909 = extractelement <64 x float> %978, i32 44, !dbg !22
  store float %909, float addrspace(5)* %110, align 4, !dbg !22
  %910 = extractelement <64 x float> %978, i32 43, !dbg !22
  store float %910, float addrspace(5)* %58, align 4, !dbg !22
  %911 = extractelement <64 x float> %978, i32 42, !dbg !22
  store float %911, float addrspace(5)* %111, align 4, !dbg !22
  %912 = extractelement <64 x float> %978, i32 41, !dbg !22
  store float %912, float addrspace(5)* %59, align 4, !dbg !22
  %913 = extractelement <64 x float> %978, i32 40, !dbg !22
  store float %913, float addrspace(5)* %112, align 4, !dbg !22
  %914 = extractelement <64 x float> %978, i32 39, !dbg !22
  store float %914, float addrspace(5)* %60, align 4, !dbg !22
  %915 = extractelement <64 x float> %978, i32 38, !dbg !22
  store float %915, float addrspace(5)* %113, align 4, !dbg !22
  %916 = extractelement <64 x float> %978, i32 37, !dbg !22
  store float %916, float addrspace(5)* %61, align 4, !dbg !22
  %917 = extractelement <64 x float> %978, i32 36, !dbg !22
  store float %917, float addrspace(5)* %114, align 4, !dbg !22
  %918 = extractelement <64 x float> %978, i32 35, !dbg !22
  store float %918, float addrspace(5)* %62, align 4, !dbg !22
  %919 = extractelement <64 x float> %978, i32 34, !dbg !22
  store float %919, float addrspace(5)* %63, align 4, !dbg !22
  %920 = extractelement <64 x float> %978, i32 33, !dbg !22
  store float %920, float addrspace(5)* %64, align 4, !dbg !22
  %921 = extractelement <64 x float> %978, i32 32, !dbg !22
  store float %921, float addrspace(5)* %65, align 4, !dbg !22
  %922 = extractelement <64 x float> %978, i32 31, !dbg !22
  store float %922, float addrspace(5)* %66, align 4, !dbg !22
  %923 = extractelement <64 x float> %978, i32 30, !dbg !22
  store float %923, float addrspace(5)* %67, align 4, !dbg !22
  %924 = extractelement <64 x float> %978, i32 29, !dbg !22
  store float %924, float addrspace(5)* %68, align 4, !dbg !22
  %925 = extractelement <64 x float> %978, i32 28, !dbg !22
  store float %925, float addrspace(5)* %69, align 4, !dbg !22
  %926 = extractelement <64 x float> %978, i32 27, !dbg !22
  store float %926, float addrspace(5)* %70, align 4, !dbg !22
  %927 = extractelement <64 x float> %978, i32 26, !dbg !22
  store float %927, float addrspace(5)* %71, align 4, !dbg !22
  %928 = extractelement <64 x float> %978, i32 25, !dbg !22
  store float %928, float addrspace(5)* %72, align 4, !dbg !22
  %929 = extractelement <64 x float> %978, i32 24, !dbg !22
  store float %929, float addrspace(5)* %73, align 4, !dbg !22
  %930 = extractelement <64 x float> %978, i32 23, !dbg !22
  store float %930, float addrspace(5)* %74, align 4, !dbg !22
  %931 = extractelement <64 x float> %978, i32 22, !dbg !22
  store float %931, float addrspace(5)* %75, align 4, !dbg !22
  %932 = extractelement <64 x float> %978, i32 21, !dbg !22
  store float %932, float addrspace(5)* %76, align 4, !dbg !22
  %933 = extractelement <64 x float> %978, i32 20, !dbg !22
  store float %933, float addrspace(5)* %77, align 4, !dbg !22
  %934 = extractelement <64 x float> %978, i32 19, !dbg !22
  store float %934, float addrspace(5)* %78, align 4, !dbg !22
  %935 = extractelement <64 x float> %978, i32 18, !dbg !22
  store float %935, float addrspace(5)* %79, align 4, !dbg !22
  %936 = extractelement <64 x float> %978, i32 17, !dbg !22
  store float %936, float addrspace(5)* %80, align 4, !dbg !22
  %937 = extractelement <64 x float> %978, i32 16, !dbg !22
  store float %937, float addrspace(5)* %81, align 4, !dbg !22
  %938 = extractelement <64 x float> %978, i32 15, !dbg !22
  store float %938, float addrspace(5)* %82, align 4, !dbg !22
  %939 = extractelement <64 x float> %978, i32 14, !dbg !22
  store float %939, float addrspace(5)* %83, align 4, !dbg !22
  %940 = extractelement <64 x float> %978, i32 13, !dbg !22
  store float %940, float addrspace(5)* %84, align 4, !dbg !22
  %941 = extractelement <64 x float> %978, i32 12, !dbg !22
  store float %941, float addrspace(5)* %85, align 4, !dbg !22
  %942 = extractelement <64 x float> %978, i32 11, !dbg !22
  store float %942, float addrspace(5)* %86, align 4, !dbg !22
  %943 = extractelement <64 x float> %978, i32 10, !dbg !22
  store float %943, float addrspace(5)* %87, align 4, !dbg !22
  %944 = extractelement <64 x float> %978, i32 9, !dbg !22
  store float %944, float addrspace(5)* %88, align 4, !dbg !22
  %945 = extractelement <64 x float> %978, i32 8, !dbg !22
  store float %945, float addrspace(5)* %89, align 4, !dbg !22
  %946 = extractelement <64 x float> %978, i32 7, !dbg !22
  store float %946, float addrspace(5)* %90, align 4, !dbg !22
  %947 = extractelement <64 x float> %978, i32 6, !dbg !22
  store float %947, float addrspace(5)* %91, align 4, !dbg !22
  %948 = extractelement <64 x float> %978, i32 5, !dbg !22
  store float %948, float addrspace(5)* %92, align 4, !dbg !22
  %949 = extractelement <64 x float> %978, i32 4, !dbg !22
  store float %949, float addrspace(5)* %93, align 4, !dbg !22
  %950 = extractelement <64 x float> %978, i32 3, !dbg !22
  store float %950, float addrspace(5)* %94, align 4, !dbg !22
  %951 = extractelement <64 x float> %978, i32 2, !dbg !22
  store float %951, float addrspace(5)* %95, align 4, !dbg !22
  %952 = extractelement <64 x float> %978, i32 1, !dbg !22
  store float %952, float addrspace(5)* %96, align 4, !dbg !22
  %953 = extractelement <64 x float> %978, i32 0, !dbg !22
  store float %953, float addrspace(5)* %97, align 4, !dbg !22
  store i32 %737, i32 addrspace(3)* %412, align 16, !dbg !198
  store i32 %762, i32 addrspace(3)* %413, align 4, !dbg !198
  store i32 %787, i32 addrspace(3)* %414, align 8, !dbg !198
  store i32 %812, i32 addrspace(3)* %246, align 4, !dbg !198
  store i32 %839, i32 addrspace(3)* %415, align 16, !dbg !199
  store i32 %847, i32 addrspace(3)* %416, align 4, !dbg !199
  store i32 %855, i32 addrspace(3)* %417, align 8, !dbg !199
  store i32 %863, i32 addrspace(3)* %381, align 4, !dbg !199
  %954 = insertelement <2 x i32> %.sroa.0159.0, i32 %813, i32 0, !dbg !200
  %955 = add nuw nsw i64 %418, 1, !dbg !201
  br label %.critedge125, !dbg !202

.preheader215:                                    ; preds = %.preheader215, %.preheader220
  %956 = phi i64 [ 0, %.preheader220 ], [ %979, %.preheader215 ]
  %957 = phi <64 x float> [ %reorder_shuffle890, %.preheader220 ], [ %978, %.preheader215 ], !dbg !22
  %.tr84 = trunc i64 %956 to i32, !dbg !22
  %958 = shl i32 %.tr84, 7, !dbg !22
  %959 = add i32 %388, %958, !dbg !22
  %960 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %959, !dbg !203
  %961 = bitcast float addrspace(3)* %960 to <4 x float> addrspace(3)*, !dbg !204
  %962 = load <4 x float>, <4 x float> addrspace(3)* %961, align 16, !dbg !204
  %963 = add i32 %959, 64, !dbg !22
  %964 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %963, !dbg !203
  %965 = bitcast float addrspace(3)* %964 to <4 x float> addrspace(3)*, !dbg !204
  %966 = load <4 x float>, <4 x float> addrspace(3)* %965, align 4, !dbg !204
  %967 = add i32 %389, %958, !dbg !22
  %968 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %967, !dbg !205
  %969 = bitcast float addrspace(3)* %968 to <4 x float> addrspace(3)*, !dbg !206
  %970 = load <4 x float>, <4 x float> addrspace(3)* %969, align 16, !dbg !206
  %971 = add i32 %967, 64, !dbg !22
  %972 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %971, !dbg !205
  %973 = bitcast float addrspace(3)* %972 to <4 x float> addrspace(3)*, !dbg !206
  %974 = load <4 x float>, <4 x float> addrspace(3)* %973, align 4, !dbg !206
  %975 = shufflevector <4 x float> %966, <4 x float> %962, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>, !dbg !207
  %shuffle891 = shufflevector <8 x float> %975, <8 x float> undef, <64 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>, !dbg !207
  %976 = shufflevector <4 x float> %974, <4 x float> %970, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>, !dbg !207
  %shuffle892 = shufflevector <8 x float> %976, <8 x float> undef, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !207
  %977 = fmul <64 x float> %shuffle891, %shuffle892, !dbg !207
  %978 = fadd <64 x float> %977, %957, !dbg !208
  %979 = add nuw nsw i64 %956, 1, !dbg !209
  %exitcond305 = icmp eq i64 %979, 8, !dbg !210
  br i1 %exitcond305, label %.preheader219, label %.preheader215, !dbg !189

.preheader207:                                    ; preds = %.preheader207, %.preheader208
  %980 = phi i64 [ 0, %.preheader208 ], [ %1003, %.preheader207 ]
  %981 = phi <64 x float> [ %reorder_shuffle, %.preheader208 ], [ %1002, %.preheader207 ], !dbg !22
  %.tr82 = trunc i64 %980 to i32, !dbg !22
  %982 = shl i32 %.tr82, 7, !dbg !22
  %983 = add i32 %388, %982, !dbg !22
  %984 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %983, !dbg !211
  %985 = bitcast float addrspace(3)* %984 to <4 x float> addrspace(3)*, !dbg !212
  %986 = load <4 x float>, <4 x float> addrspace(3)* %985, align 16, !dbg !212
  %987 = add i32 %983, 64, !dbg !22
  %988 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %987, !dbg !211
  %989 = bitcast float addrspace(3)* %988 to <4 x float> addrspace(3)*, !dbg !212
  %990 = load <4 x float>, <4 x float> addrspace(3)* %989, align 4, !dbg !212
  %991 = add i32 %389, %982, !dbg !22
  %992 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %991, !dbg !213
  %993 = bitcast float addrspace(3)* %992 to <4 x float> addrspace(3)*, !dbg !214
  %994 = load <4 x float>, <4 x float> addrspace(3)* %993, align 16, !dbg !214
  %995 = add i32 %991, 64, !dbg !22
  %996 = getelementptr [4096 x float], [4096 x float] addrspace(3)* @__wg_miopen_conv2d_kcyx_nchw_nkhw_0, i32 0, i32 %995, !dbg !213
  %997 = bitcast float addrspace(3)* %996 to <4 x float> addrspace(3)*, !dbg !214
  %998 = load <4 x float>, <4 x float> addrspace(3)* %997, align 4, !dbg !214
  %999 = shufflevector <4 x float> %990, <4 x float> %986, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>, !dbg !215
  %shuffle = shufflevector <8 x float> %999, <8 x float> undef, <64 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>, !dbg !215
  %1000 = shufflevector <4 x float> %998, <4 x float> %994, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>, !dbg !215
  %shuffle885 = shufflevector <8 x float> %1000, <8 x float> undef, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !215
  %1001 = fmul <64 x float> %shuffle, %shuffle885, !dbg !215
  %1002 = fadd <64 x float> %1001, %981, !dbg !216
  %1003 = add nuw nsw i64 %980, 1, !dbg !217
  %exitcond285 = icmp eq i64 %1003, 8, !dbg !218
  br i1 %exitcond285, label %1004, label %.preheader207, !dbg !98

1004:                                             ; preds = %.preheader207
  %1005 = extractelement <64 x float> %1002, i32 63, !dbg !22
  store float %1005, float addrspace(5)* %.sub, align 4, !dbg !22
  %1006 = extractelement <64 x float> %1002, i32 62, !dbg !22
  store float %1006, float addrspace(5)* %101, align 4, !dbg !22
  %1007 = extractelement <64 x float> %1002, i32 61, !dbg !22
  store float %1007, float addrspace(5)* %49, align 4, !dbg !22
  %1008 = extractelement <64 x float> %1002, i32 60, !dbg !22
  store float %1008, float addrspace(5)* %102, align 4, !dbg !22
  %1009 = extractelement <64 x float> %1002, i32 59, !dbg !22
  store float %1009, float addrspace(5)* %50, align 4, !dbg !22
  %1010 = extractelement <64 x float> %1002, i32 58, !dbg !22
  store float %1010, float addrspace(5)* %103, align 4, !dbg !22
  %1011 = extractelement <64 x float> %1002, i32 57, !dbg !22
  store float %1011, float addrspace(5)* %51, align 4, !dbg !22
  %1012 = extractelement <64 x float> %1002, i32 56, !dbg !22
  store float %1012, float addrspace(5)* %104, align 4, !dbg !22
  %1013 = extractelement <64 x float> %1002, i32 55, !dbg !22
  store float %1013, float addrspace(5)* %52, align 4, !dbg !22
  %1014 = extractelement <64 x float> %1002, i32 54, !dbg !22
  store float %1014, float addrspace(5)* %105, align 4, !dbg !22
  %1015 = extractelement <64 x float> %1002, i32 53, !dbg !22
  store float %1015, float addrspace(5)* %53, align 4, !dbg !22
  %1016 = extractelement <64 x float> %1002, i32 52, !dbg !22
  store float %1016, float addrspace(5)* %106, align 4, !dbg !22
  %1017 = extractelement <64 x float> %1002, i32 51, !dbg !22
  store float %1017, float addrspace(5)* %54, align 4, !dbg !22
  %1018 = extractelement <64 x float> %1002, i32 50, !dbg !22
  store float %1018, float addrspace(5)* %107, align 4, !dbg !22
  %1019 = extractelement <64 x float> %1002, i32 49, !dbg !22
  store float %1019, float addrspace(5)* %55, align 4, !dbg !22
  %1020 = extractelement <64 x float> %1002, i32 48, !dbg !22
  store float %1020, float addrspace(5)* %108, align 4, !dbg !22
  %1021 = extractelement <64 x float> %1002, i32 47, !dbg !22
  store float %1021, float addrspace(5)* %56, align 4, !dbg !22
  %1022 = extractelement <64 x float> %1002, i32 46, !dbg !22
  store float %1022, float addrspace(5)* %109, align 4, !dbg !22
  %1023 = extractelement <64 x float> %1002, i32 45, !dbg !22
  store float %1023, float addrspace(5)* %57, align 4, !dbg !22
  %1024 = extractelement <64 x float> %1002, i32 44, !dbg !22
  store float %1024, float addrspace(5)* %110, align 4, !dbg !22
  %1025 = extractelement <64 x float> %1002, i32 43, !dbg !22
  store float %1025, float addrspace(5)* %58, align 4, !dbg !22
  %1026 = extractelement <64 x float> %1002, i32 42, !dbg !22
  store float %1026, float addrspace(5)* %111, align 4, !dbg !22
  %1027 = extractelement <64 x float> %1002, i32 41, !dbg !22
  store float %1027, float addrspace(5)* %59, align 4, !dbg !22
  %1028 = extractelement <64 x float> %1002, i32 40, !dbg !22
  store float %1028, float addrspace(5)* %112, align 4, !dbg !22
  %1029 = extractelement <64 x float> %1002, i32 39, !dbg !22
  store float %1029, float addrspace(5)* %60, align 4, !dbg !22
  %1030 = extractelement <64 x float> %1002, i32 38, !dbg !22
  store float %1030, float addrspace(5)* %113, align 4, !dbg !22
  %1031 = extractelement <64 x float> %1002, i32 37, !dbg !22
  store float %1031, float addrspace(5)* %61, align 4, !dbg !22
  %1032 = extractelement <64 x float> %1002, i32 36, !dbg !22
  store float %1032, float addrspace(5)* %114, align 4, !dbg !22
  %1033 = extractelement <64 x float> %1002, i32 35, !dbg !22
  store float %1033, float addrspace(5)* %62, align 4, !dbg !22
  %1034 = extractelement <64 x float> %1002, i32 34, !dbg !22
  store float %1034, float addrspace(5)* %63, align 4, !dbg !22
  %1035 = extractelement <64 x float> %1002, i32 33, !dbg !22
  store float %1035, float addrspace(5)* %64, align 4, !dbg !22
  %1036 = extractelement <64 x float> %1002, i32 32, !dbg !22
  store float %1036, float addrspace(5)* %65, align 4, !dbg !22
  %1037 = extractelement <64 x float> %1002, i32 31, !dbg !22
  store float %1037, float addrspace(5)* %66, align 4, !dbg !22
  %1038 = extractelement <64 x float> %1002, i32 30, !dbg !22
  store float %1038, float addrspace(5)* %67, align 4, !dbg !22
  %1039 = extractelement <64 x float> %1002, i32 29, !dbg !22
  store float %1039, float addrspace(5)* %68, align 4, !dbg !22
  %1040 = extractelement <64 x float> %1002, i32 28, !dbg !22
  store float %1040, float addrspace(5)* %69, align 4, !dbg !22
  %1041 = extractelement <64 x float> %1002, i32 27, !dbg !22
  store float %1041, float addrspace(5)* %70, align 4, !dbg !22
  %1042 = extractelement <64 x float> %1002, i32 26, !dbg !22
  store float %1042, float addrspace(5)* %71, align 4, !dbg !22
  %1043 = extractelement <64 x float> %1002, i32 25, !dbg !22
  store float %1043, float addrspace(5)* %72, align 4, !dbg !22
  %1044 = extractelement <64 x float> %1002, i32 24, !dbg !22
  store float %1044, float addrspace(5)* %73, align 4, !dbg !22
  %1045 = extractelement <64 x float> %1002, i32 23, !dbg !22
  store float %1045, float addrspace(5)* %74, align 4, !dbg !22
  %1046 = extractelement <64 x float> %1002, i32 22, !dbg !22
  store float %1046, float addrspace(5)* %75, align 4, !dbg !22
  %1047 = extractelement <64 x float> %1002, i32 21, !dbg !22
  store float %1047, float addrspace(5)* %76, align 4, !dbg !22
  %1048 = extractelement <64 x float> %1002, i32 20, !dbg !22
  store float %1048, float addrspace(5)* %77, align 4, !dbg !22
  %1049 = extractelement <64 x float> %1002, i32 19, !dbg !22
  store float %1049, float addrspace(5)* %78, align 4, !dbg !22
  %1050 = extractelement <64 x float> %1002, i32 18, !dbg !22
  store float %1050, float addrspace(5)* %79, align 4, !dbg !22
  %1051 = extractelement <64 x float> %1002, i32 17, !dbg !22
  store float %1051, float addrspace(5)* %80, align 4, !dbg !22
  %1052 = extractelement <64 x float> %1002, i32 16, !dbg !22
  store float %1052, float addrspace(5)* %81, align 4, !dbg !22
  %1053 = extractelement <64 x float> %1002, i32 15, !dbg !22
  store float %1053, float addrspace(5)* %82, align 4, !dbg !22
  %1054 = extractelement <64 x float> %1002, i32 14, !dbg !22
  store float %1054, float addrspace(5)* %83, align 4, !dbg !22
  %1055 = extractelement <64 x float> %1002, i32 13, !dbg !22
  store float %1055, float addrspace(5)* %84, align 4, !dbg !22
  %1056 = extractelement <64 x float> %1002, i32 12, !dbg !22
  store float %1056, float addrspace(5)* %85, align 4, !dbg !22
  %1057 = extractelement <64 x float> %1002, i32 11, !dbg !22
  store float %1057, float addrspace(5)* %86, align 4, !dbg !22
  %1058 = extractelement <64 x float> %1002, i32 10, !dbg !22
  store float %1058, float addrspace(5)* %87, align 4, !dbg !22
  %1059 = extractelement <64 x float> %1002, i32 9, !dbg !22
  store float %1059, float addrspace(5)* %88, align 4, !dbg !22
  %1060 = extractelement <64 x float> %1002, i32 8, !dbg !22
  store float %1060, float addrspace(5)* %89, align 4, !dbg !22
  %1061 = extractelement <64 x float> %1002, i32 7, !dbg !22
  store float %1061, float addrspace(5)* %90, align 4, !dbg !22
  %1062 = extractelement <64 x float> %1002, i32 6, !dbg !22
  store float %1062, float addrspace(5)* %91, align 4, !dbg !22
  %1063 = extractelement <64 x float> %1002, i32 5, !dbg !22
  store float %1063, float addrspace(5)* %92, align 4, !dbg !22
  %1064 = extractelement <64 x float> %1002, i32 4, !dbg !22
  store float %1064, float addrspace(5)* %93, align 4, !dbg !22
  %1065 = extractelement <64 x float> %1002, i32 3, !dbg !22
  store float %1065, float addrspace(5)* %94, align 4, !dbg !22
  %1066 = extractelement <64 x float> %1002, i32 2, !dbg !22
  store float %1066, float addrspace(5)* %95, align 4, !dbg !22
  %1067 = extractelement <64 x float> %1002, i32 1, !dbg !22
  store float %1067, float addrspace(5)* %96, align 4, !dbg !22
  %1068 = extractelement <64 x float> %1002, i32 0, !dbg !22
  store float %1068, float addrspace(5)* %97, align 4, !dbg !22
  %.frozen915 = freeze i32 %130
  %1069 = sdiv i32 %.frozen915, 64, !dbg !219
  %1070 = mul i32 %1069, 64
  %.decomposed916 = sub i32 %.frozen915, %1070
  %.frozen917 = freeze i32 %233
  %1071 = sdiv i32 %.frozen917, 64, !dbg !220
  %1072 = mul i32 %1071, 64
  %.decomposed918 = sub i32 %.frozen917, %1072
  %1073 = sext i32 %.decomposed916 to i64, !dbg !22
  %1074 = sext i32 %1071 to i64, !dbg !22
  %1075 = shl nsw i64 %1074, 6, !dbg !22
  %1076 = sext i32 %.decomposed918 to i64, !dbg !22
  %1077 = add nsw i64 %1075, %1076, !dbg !22
  %.lobit = ashr i64 %1077, 63, !dbg !22
  %1078 = xor i64 %.lobit, %1077, !dbg !22
  %1079 = sdiv i64 %1078, 900, !dbg !22
  %1080 = xor i64 %1079, %.lobit, !dbg !22
  %1081 = srem i64 %1077, 900, !dbg !22
  %1082 = icmp slt i64 %1081, 0, !dbg !22
  %1083 = add nsw i64 %1081, 900, !dbg !22
  %1084 = select i1 %1082, i64 %1083, i64 %1081, !dbg !22
  %.lobit79 = ashr i64 %1084, 63, !dbg !22
  %1085 = xor i64 %.lobit79, %1084, !dbg !22
  %1086 = sdiv i64 %1085, 30, !dbg !22
  %1087 = xor i64 %1086, %.lobit79, !dbg !22
  %1088 = srem i64 %1084, 30, !dbg !22
  %1089 = icmp slt i64 %1088, 0, !dbg !22
  %1090 = add nuw nsw i64 %1088, 30, !dbg !22
  %1091 = select i1 %1089, i64 %1090, i64 %1088, !dbg !22
  %1092 = mul nsw i64 %1080, 115200, !dbg !22
  %1093 = mul nsw i64 %1087, 30, !dbg !22
  %1094 = or i32 %.decomposed918, 1, !dbg !22
  %1095 = sext i32 %1094 to i64, !dbg !22
  %1096 = add nsw i64 %1075, %1095, !dbg !22
  %.lobit.1 = ashr i64 %1096, 63, !dbg !22
  %1097 = xor i64 %.lobit.1, %1096, !dbg !22
  %1098 = sdiv i64 %1097, 900, !dbg !22
  %1099 = xor i64 %1098, %.lobit.1, !dbg !22
  %1100 = srem i64 %1096, 900, !dbg !22
  %1101 = icmp slt i64 %1100, 0, !dbg !22
  %1102 = add nsw i64 %1100, 900, !dbg !22
  %1103 = select i1 %1101, i64 %1102, i64 %1100, !dbg !22
  %.lobit79.1 = ashr i64 %1103, 63, !dbg !22
  %1104 = xor i64 %.lobit79.1, %1103, !dbg !22
  %1105 = sdiv i64 %1104, 30, !dbg !22
  %1106 = xor i64 %1105, %.lobit79.1, !dbg !22
  %1107 = srem i64 %1103, 30, !dbg !22
  %1108 = icmp slt i64 %1107, 0, !dbg !22
  %1109 = add nuw nsw i64 %1107, 30, !dbg !22
  %1110 = select i1 %1108, i64 %1109, i64 %1107, !dbg !22
  %1111 = mul nsw i64 %1099, 115200, !dbg !22
  %1112 = mul nsw i64 %1106, 30, !dbg !22
  %1113 = or i32 %.decomposed918, 2, !dbg !22
  %1114 = sext i32 %1113 to i64, !dbg !22
  %1115 = add nsw i64 %1075, %1114, !dbg !22
  %.lobit.2 = ashr i64 %1115, 63, !dbg !22
  %1116 = xor i64 %.lobit.2, %1115, !dbg !22
  %1117 = sdiv i64 %1116, 900, !dbg !22
  %1118 = xor i64 %1117, %.lobit.2, !dbg !22
  %1119 = srem i64 %1115, 900, !dbg !22
  %1120 = icmp slt i64 %1119, 0, !dbg !22
  %1121 = add nsw i64 %1119, 900, !dbg !22
  %1122 = select i1 %1120, i64 %1121, i64 %1119, !dbg !22
  %.lobit79.2 = ashr i64 %1122, 63, !dbg !22
  %1123 = xor i64 %.lobit79.2, %1122, !dbg !22
  %1124 = sdiv i64 %1123, 30, !dbg !22
  %1125 = xor i64 %1124, %.lobit79.2, !dbg !22
  %1126 = srem i64 %1122, 30, !dbg !22
  %1127 = icmp slt i64 %1126, 0, !dbg !22
  %1128 = add nuw nsw i64 %1126, 30, !dbg !22
  %1129 = select i1 %1127, i64 %1128, i64 %1126, !dbg !22
  %1130 = mul nsw i64 %1118, 115200, !dbg !22
  %1131 = mul nsw i64 %1125, 30, !dbg !22
  %1132 = or i32 %.decomposed918, 3, !dbg !22
  %1133 = sext i32 %1132 to i64, !dbg !22
  %1134 = add nsw i64 %1075, %1133, !dbg !22
  %.lobit.3 = ashr i64 %1134, 63, !dbg !22
  %1135 = xor i64 %.lobit.3, %1134, !dbg !22
  %1136 = sdiv i64 %1135, 900, !dbg !22
  %1137 = xor i64 %1136, %.lobit.3, !dbg !22
  %1138 = srem i64 %1134, 900, !dbg !22
  %1139 = icmp slt i64 %1138, 0, !dbg !22
  %1140 = add nsw i64 %1138, 900, !dbg !22
  %1141 = select i1 %1139, i64 %1140, i64 %1138, !dbg !22
  %.lobit79.3 = ashr i64 %1141, 63, !dbg !22
  %1142 = xor i64 %.lobit79.3, %1141, !dbg !22
  %1143 = sdiv i64 %1142, 30, !dbg !22
  %1144 = xor i64 %1143, %.lobit79.3, !dbg !22
  %1145 = srem i64 %1141, 30, !dbg !22
  %1146 = icmp slt i64 %1145, 0, !dbg !22
  %1147 = add nuw nsw i64 %1145, 30, !dbg !22
  %1148 = select i1 %1146, i64 %1147, i64 %1145, !dbg !22
  %1149 = mul nsw i64 %1137, 115200, !dbg !22
  %1150 = mul nsw i64 %1144, 30, !dbg !22
  %1151 = add nsw i32 %1071, 1, !dbg !22
  %1152 = sext i32 %1151 to i64, !dbg !22
  %1153 = shl nsw i64 %1152, 6, !dbg !22
  %1154 = add nsw i64 %1153, %1076, !dbg !22
  %.lobit.1265 = ashr i64 %1154, 63, !dbg !22
  %1155 = xor i64 %.lobit.1265, %1154, !dbg !22
  %1156 = sdiv i64 %1155, 900, !dbg !22
  %1157 = xor i64 %1156, %.lobit.1265, !dbg !22
  %1158 = srem i64 %1154, 900, !dbg !22
  %1159 = icmp slt i64 %1158, 0, !dbg !22
  %1160 = add nsw i64 %1158, 900, !dbg !22
  %1161 = select i1 %1159, i64 %1160, i64 %1158, !dbg !22
  %.lobit79.1266 = ashr i64 %1161, 63, !dbg !22
  %1162 = xor i64 %.lobit79.1266, %1161, !dbg !22
  %1163 = sdiv i64 %1162, 30, !dbg !22
  %1164 = xor i64 %1163, %.lobit79.1266, !dbg !22
  %1165 = srem i64 %1161, 30, !dbg !22
  %1166 = icmp slt i64 %1165, 0, !dbg !22
  %1167 = add nuw nsw i64 %1165, 30, !dbg !22
  %1168 = select i1 %1166, i64 %1167, i64 %1165, !dbg !22
  %1169 = mul nsw i64 %1157, 115200, !dbg !22
  %1170 = mul nsw i64 %1164, 30, !dbg !22
  %1171 = add nsw i64 %1153, %1095, !dbg !22
  %.lobit.1.1 = ashr i64 %1171, 63, !dbg !22
  %1172 = xor i64 %.lobit.1.1, %1171, !dbg !22
  %1173 = sdiv i64 %1172, 900, !dbg !22
  %1174 = xor i64 %1173, %.lobit.1.1, !dbg !22
  %1175 = srem i64 %1171, 900, !dbg !22
  %1176 = icmp slt i64 %1175, 0, !dbg !22
  %1177 = add nsw i64 %1175, 900, !dbg !22
  %1178 = select i1 %1176, i64 %1177, i64 %1175, !dbg !22
  %.lobit79.1.1 = ashr i64 %1178, 63, !dbg !22
  %1179 = xor i64 %.lobit79.1.1, %1178, !dbg !22
  %1180 = sdiv i64 %1179, 30, !dbg !22
  %1181 = xor i64 %1180, %.lobit79.1.1, !dbg !22
  %1182 = srem i64 %1178, 30, !dbg !22
  %1183 = icmp slt i64 %1182, 0, !dbg !22
  %1184 = add nuw nsw i64 %1182, 30, !dbg !22
  %1185 = select i1 %1183, i64 %1184, i64 %1182, !dbg !22
  %1186 = mul nsw i64 %1174, 115200, !dbg !22
  %1187 = mul nsw i64 %1181, 30, !dbg !22
  %1188 = add nsw i64 %1153, %1114, !dbg !22
  %.lobit.2.1 = ashr i64 %1188, 63, !dbg !22
  %1189 = xor i64 %.lobit.2.1, %1188, !dbg !22
  %1190 = sdiv i64 %1189, 900, !dbg !22
  %1191 = xor i64 %1190, %.lobit.2.1, !dbg !22
  %1192 = srem i64 %1188, 900, !dbg !22
  %1193 = icmp slt i64 %1192, 0, !dbg !22
  %1194 = add nsw i64 %1192, 900, !dbg !22
  %1195 = select i1 %1193, i64 %1194, i64 %1192, !dbg !22
  %.lobit79.2.1 = ashr i64 %1195, 63, !dbg !22
  %1196 = xor i64 %.lobit79.2.1, %1195, !dbg !22
  %1197 = sdiv i64 %1196, 30, !dbg !22
  %1198 = xor i64 %1197, %.lobit79.2.1, !dbg !22
  %1199 = srem i64 %1195, 30, !dbg !22
  %1200 = icmp slt i64 %1199, 0, !dbg !22
  %1201 = add nuw nsw i64 %1199, 30, !dbg !22
  %1202 = select i1 %1200, i64 %1201, i64 %1199, !dbg !22
  %1203 = mul nsw i64 %1191, 115200, !dbg !22
  %1204 = mul nsw i64 %1198, 30, !dbg !22
  %1205 = add nsw i64 %1153, %1133, !dbg !22
  %.lobit.3.1 = ashr i64 %1205, 63, !dbg !22
  %1206 = xor i64 %.lobit.3.1, %1205, !dbg !22
  %1207 = sdiv i64 %1206, 900, !dbg !22
  %1208 = xor i64 %1207, %.lobit.3.1, !dbg !22
  %1209 = srem i64 %1205, 900, !dbg !22
  %1210 = icmp slt i64 %1209, 0, !dbg !22
  %1211 = add nsw i64 %1209, 900, !dbg !22
  %1212 = select i1 %1210, i64 %1211, i64 %1209, !dbg !22
  %.lobit79.3.1 = ashr i64 %1212, 63, !dbg !22
  %1213 = xor i64 %.lobit79.3.1, %1212, !dbg !22
  %1214 = sdiv i64 %1213, 30, !dbg !22
  %1215 = xor i64 %1214, %.lobit79.3.1, !dbg !22
  %1216 = srem i64 %1212, 30, !dbg !22
  %1217 = icmp slt i64 %1216, 0, !dbg !22
  %1218 = add nuw nsw i64 %1216, 30, !dbg !22
  %1219 = select i1 %1217, i64 %1218, i64 %1216, !dbg !22
  %1220 = mul nsw i64 %1208, 115200, !dbg !22
  %1221 = mul nsw i64 %1215, 30, !dbg !22
  %1222 = or i32 %.decomposed916, 1, !dbg !22
  %1223 = sext i32 %1222 to i64, !dbg !22
  %1224 = or i32 %.decomposed916, 2, !dbg !22
  %1225 = sext i32 %1224 to i64, !dbg !22
  %1226 = or i32 %.decomposed916, 3, !dbg !22
  %1227 = sext i32 %1226 to i64, !dbg !22
  %1228 = sext i32 %1069 to i64, !dbg !22
  %1229 = shl nsw i64 %1228, 6, !dbg !22
  %1230 = add nsw i64 %1229, %1073, !dbg !22
  %1231 = mul nsw i64 %1230, 900, !dbg !22
  %1232 = bitcast <64 x float> addrspace(5)* %33 to i32 addrspace(5)*, !dbg !221
  %1233 = load i32, i32 addrspace(5)* %1232, align 4, !dbg !221
  %1234 = add i64 %1092, %1231, !dbg !222
  %1235 = add i64 %1234, %1091, !dbg !223
  %1236 = add i64 %1235, %1093, !dbg !224
  %1237 = getelementptr float, float* %23, i64 %1236, !dbg !225
  %1238 = bitcast float* %1237 to i32*, !dbg !226
  store i32 %1233, i32* %1238, align 4, !dbg !226
  %1239 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 1, !dbg !227
  %1240 = bitcast float addrspace(5)* %1239 to i32 addrspace(5)*, !dbg !221
  %1241 = load i32, i32 addrspace(5)* %1240, align 4, !dbg !221
  %1242 = add i64 %1111, %1231, !dbg !222
  %1243 = add i64 %1242, %1110, !dbg !223
  %1244 = add i64 %1243, %1112, !dbg !224
  %1245 = getelementptr float, float* %23, i64 %1244, !dbg !225
  %1246 = bitcast float* %1245 to i32*, !dbg !226
  store i32 %1241, i32* %1246, align 4, !dbg !226
  %1247 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 2, !dbg !227
  %1248 = bitcast float addrspace(5)* %1247 to i32 addrspace(5)*, !dbg !221
  %1249 = load i32, i32 addrspace(5)* %1248, align 4, !dbg !221
  %1250 = add i64 %1130, %1231, !dbg !222
  %1251 = add i64 %1250, %1129, !dbg !223
  %1252 = add i64 %1251, %1131, !dbg !224
  %1253 = getelementptr float, float* %23, i64 %1252, !dbg !225
  %1254 = bitcast float* %1253 to i32*, !dbg !226
  store i32 %1249, i32* %1254, align 4, !dbg !226
  %1255 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 3, !dbg !227
  %1256 = bitcast float addrspace(5)* %1255 to i32 addrspace(5)*, !dbg !221
  %1257 = load i32, i32 addrspace(5)* %1256, align 4, !dbg !221
  %1258 = add i64 %1149, %1231, !dbg !222
  %1259 = add i64 %1258, %1148, !dbg !223
  %1260 = add i64 %1259, %1150, !dbg !224
  %1261 = getelementptr float, float* %23, i64 %1260, !dbg !225
  %1262 = bitcast float* %1261 to i32*, !dbg !226
  store i32 %1257, i32* %1262, align 4, !dbg !226
  %1263 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 4, !dbg !227
  %1264 = bitcast float addrspace(5)* %1263 to i32 addrspace(5)*, !dbg !221
  %1265 = load i32, i32 addrspace(5)* %1264, align 4, !dbg !221
  %1266 = add i64 %1169, %1231, !dbg !222
  %1267 = add i64 %1266, %1168, !dbg !223
  %1268 = add i64 %1267, %1170, !dbg !224
  %1269 = getelementptr float, float* %23, i64 %1268, !dbg !225
  %1270 = bitcast float* %1269 to i32*, !dbg !226
  store i32 %1265, i32* %1270, align 4, !dbg !226
  %1271 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 5, !dbg !227
  %1272 = bitcast float addrspace(5)* %1271 to i32 addrspace(5)*, !dbg !221
  %1273 = load i32, i32 addrspace(5)* %1272, align 4, !dbg !221
  %1274 = add i64 %1186, %1231, !dbg !222
  %1275 = add i64 %1274, %1185, !dbg !223
  %1276 = add i64 %1275, %1187, !dbg !224
  %1277 = getelementptr float, float* %23, i64 %1276, !dbg !225
  %1278 = bitcast float* %1277 to i32*, !dbg !226
  store i32 %1273, i32* %1278, align 4, !dbg !226
  %1279 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 6, !dbg !227
  %1280 = bitcast float addrspace(5)* %1279 to i32 addrspace(5)*, !dbg !221
  %1281 = load i32, i32 addrspace(5)* %1280, align 4, !dbg !221
  %1282 = add i64 %1203, %1231, !dbg !222
  %1283 = add i64 %1282, %1202, !dbg !223
  %1284 = add i64 %1283, %1204, !dbg !224
  %1285 = getelementptr float, float* %23, i64 %1284, !dbg !225
  %1286 = bitcast float* %1285 to i32*, !dbg !226
  store i32 %1281, i32* %1286, align 4, !dbg !226
  %1287 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 7, !dbg !227
  %1288 = bitcast float addrspace(5)* %1287 to i32 addrspace(5)*, !dbg !221
  %1289 = load i32, i32 addrspace(5)* %1288, align 4, !dbg !221
  %1290 = add i64 %1220, %1231, !dbg !222
  %1291 = add i64 %1290, %1219, !dbg !223
  %1292 = add i64 %1291, %1221, !dbg !224
  %1293 = getelementptr float, float* %23, i64 %1292, !dbg !225
  %1294 = bitcast float* %1293 to i32*, !dbg !226
  store i32 %1289, i32* %1294, align 4, !dbg !226
  %1295 = add nsw i64 %1229, %1223, !dbg !22
  %1296 = mul nsw i64 %1295, 900, !dbg !22
  %1297 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 8, !dbg !227
  %1298 = bitcast float addrspace(5)* %1297 to i32 addrspace(5)*, !dbg !221
  %1299 = load i32, i32 addrspace(5)* %1298, align 4, !dbg !221
  %1300 = add i64 %1092, %1296, !dbg !222
  %1301 = add i64 %1300, %1091, !dbg !223
  %1302 = add i64 %1301, %1093, !dbg !224
  %1303 = getelementptr float, float* %23, i64 %1302, !dbg !225
  %1304 = bitcast float* %1303 to i32*, !dbg !226
  store i32 %1299, i32* %1304, align 4, !dbg !226
  %1305 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 9, !dbg !227
  %1306 = bitcast float addrspace(5)* %1305 to i32 addrspace(5)*, !dbg !221
  %1307 = load i32, i32 addrspace(5)* %1306, align 4, !dbg !221
  %1308 = add i64 %1111, %1296, !dbg !222
  %1309 = add i64 %1308, %1110, !dbg !223
  %1310 = add i64 %1309, %1112, !dbg !224
  %1311 = getelementptr float, float* %23, i64 %1310, !dbg !225
  %1312 = bitcast float* %1311 to i32*, !dbg !226
  store i32 %1307, i32* %1312, align 4, !dbg !226
  %1313 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 10, !dbg !227
  %1314 = bitcast float addrspace(5)* %1313 to i32 addrspace(5)*, !dbg !221
  %1315 = load i32, i32 addrspace(5)* %1314, align 4, !dbg !221
  %1316 = add i64 %1130, %1296, !dbg !222
  %1317 = add i64 %1316, %1129, !dbg !223
  %1318 = add i64 %1317, %1131, !dbg !224
  %1319 = getelementptr float, float* %23, i64 %1318, !dbg !225
  %1320 = bitcast float* %1319 to i32*, !dbg !226
  store i32 %1315, i32* %1320, align 4, !dbg !226
  %1321 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 11, !dbg !227
  %1322 = bitcast float addrspace(5)* %1321 to i32 addrspace(5)*, !dbg !221
  %1323 = load i32, i32 addrspace(5)* %1322, align 4, !dbg !221
  %1324 = add i64 %1149, %1296, !dbg !222
  %1325 = add i64 %1324, %1148, !dbg !223
  %1326 = add i64 %1325, %1150, !dbg !224
  %1327 = getelementptr float, float* %23, i64 %1326, !dbg !225
  %1328 = bitcast float* %1327 to i32*, !dbg !226
  store i32 %1323, i32* %1328, align 4, !dbg !226
  %1329 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 12, !dbg !227
  %1330 = bitcast float addrspace(5)* %1329 to i32 addrspace(5)*, !dbg !221
  %1331 = load i32, i32 addrspace(5)* %1330, align 4, !dbg !221
  %1332 = add i64 %1169, %1296, !dbg !222
  %1333 = add i64 %1332, %1168, !dbg !223
  %1334 = add i64 %1333, %1170, !dbg !224
  %1335 = getelementptr float, float* %23, i64 %1334, !dbg !225
  %1336 = bitcast float* %1335 to i32*, !dbg !226
  store i32 %1331, i32* %1336, align 4, !dbg !226
  %1337 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 13, !dbg !227
  %1338 = bitcast float addrspace(5)* %1337 to i32 addrspace(5)*, !dbg !221
  %1339 = load i32, i32 addrspace(5)* %1338, align 4, !dbg !221
  %1340 = add i64 %1186, %1296, !dbg !222
  %1341 = add i64 %1340, %1185, !dbg !223
  %1342 = add i64 %1341, %1187, !dbg !224
  %1343 = getelementptr float, float* %23, i64 %1342, !dbg !225
  %1344 = bitcast float* %1343 to i32*, !dbg !226
  store i32 %1339, i32* %1344, align 4, !dbg !226
  %1345 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 14, !dbg !227
  %1346 = bitcast float addrspace(5)* %1345 to i32 addrspace(5)*, !dbg !221
  %1347 = load i32, i32 addrspace(5)* %1346, align 4, !dbg !221
  %1348 = add i64 %1203, %1296, !dbg !222
  %1349 = add i64 %1348, %1202, !dbg !223
  %1350 = add i64 %1349, %1204, !dbg !224
  %1351 = getelementptr float, float* %23, i64 %1350, !dbg !225
  %1352 = bitcast float* %1351 to i32*, !dbg !226
  store i32 %1347, i32* %1352, align 4, !dbg !226
  %1353 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 15, !dbg !227
  %1354 = bitcast float addrspace(5)* %1353 to i32 addrspace(5)*, !dbg !221
  %1355 = load i32, i32 addrspace(5)* %1354, align 4, !dbg !221
  %1356 = add i64 %1220, %1296, !dbg !222
  %1357 = add i64 %1356, %1219, !dbg !223
  %1358 = add i64 %1357, %1221, !dbg !224
  %1359 = getelementptr float, float* %23, i64 %1358, !dbg !225
  %1360 = bitcast float* %1359 to i32*, !dbg !226
  store i32 %1355, i32* %1360, align 4, !dbg !226
  %1361 = add nsw i64 %1229, %1225, !dbg !22
  %1362 = mul nsw i64 %1361, 900, !dbg !22
  %1363 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 16, !dbg !227
  %1364 = bitcast float addrspace(5)* %1363 to i32 addrspace(5)*, !dbg !221
  %1365 = load i32, i32 addrspace(5)* %1364, align 4, !dbg !221
  %1366 = add i64 %1092, %1362, !dbg !222
  %1367 = add i64 %1366, %1091, !dbg !223
  %1368 = add i64 %1367, %1093, !dbg !224
  %1369 = getelementptr float, float* %23, i64 %1368, !dbg !225
  %1370 = bitcast float* %1369 to i32*, !dbg !226
  store i32 %1365, i32* %1370, align 4, !dbg !226
  %1371 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 17, !dbg !227
  %1372 = bitcast float addrspace(5)* %1371 to i32 addrspace(5)*, !dbg !221
  %1373 = load i32, i32 addrspace(5)* %1372, align 4, !dbg !221
  %1374 = add i64 %1111, %1362, !dbg !222
  %1375 = add i64 %1374, %1110, !dbg !223
  %1376 = add i64 %1375, %1112, !dbg !224
  %1377 = getelementptr float, float* %23, i64 %1376, !dbg !225
  %1378 = bitcast float* %1377 to i32*, !dbg !226
  store i32 %1373, i32* %1378, align 4, !dbg !226
  %1379 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 18, !dbg !227
  %1380 = bitcast float addrspace(5)* %1379 to i32 addrspace(5)*, !dbg !221
  %1381 = load i32, i32 addrspace(5)* %1380, align 4, !dbg !221
  %1382 = add i64 %1130, %1362, !dbg !222
  %1383 = add i64 %1382, %1129, !dbg !223
  %1384 = add i64 %1383, %1131, !dbg !224
  %1385 = getelementptr float, float* %23, i64 %1384, !dbg !225
  %1386 = bitcast float* %1385 to i32*, !dbg !226
  store i32 %1381, i32* %1386, align 4, !dbg !226
  %1387 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 19, !dbg !227
  %1388 = bitcast float addrspace(5)* %1387 to i32 addrspace(5)*, !dbg !221
  %1389 = load i32, i32 addrspace(5)* %1388, align 4, !dbg !221
  %1390 = add i64 %1149, %1362, !dbg !222
  %1391 = add i64 %1390, %1148, !dbg !223
  %1392 = add i64 %1391, %1150, !dbg !224
  %1393 = getelementptr float, float* %23, i64 %1392, !dbg !225
  %1394 = bitcast float* %1393 to i32*, !dbg !226
  store i32 %1389, i32* %1394, align 4, !dbg !226
  %1395 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 20, !dbg !227
  %1396 = bitcast float addrspace(5)* %1395 to i32 addrspace(5)*, !dbg !221
  %1397 = load i32, i32 addrspace(5)* %1396, align 4, !dbg !221
  %1398 = add i64 %1169, %1362, !dbg !222
  %1399 = add i64 %1398, %1168, !dbg !223
  %1400 = add i64 %1399, %1170, !dbg !224
  %1401 = getelementptr float, float* %23, i64 %1400, !dbg !225
  %1402 = bitcast float* %1401 to i32*, !dbg !226
  store i32 %1397, i32* %1402, align 4, !dbg !226
  %1403 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 21, !dbg !227
  %1404 = bitcast float addrspace(5)* %1403 to i32 addrspace(5)*, !dbg !221
  %1405 = load i32, i32 addrspace(5)* %1404, align 4, !dbg !221
  %1406 = add i64 %1186, %1362, !dbg !222
  %1407 = add i64 %1406, %1185, !dbg !223
  %1408 = add i64 %1407, %1187, !dbg !224
  %1409 = getelementptr float, float* %23, i64 %1408, !dbg !225
  %1410 = bitcast float* %1409 to i32*, !dbg !226
  store i32 %1405, i32* %1410, align 4, !dbg !226
  %1411 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 22, !dbg !227
  %1412 = bitcast float addrspace(5)* %1411 to i32 addrspace(5)*, !dbg !221
  %1413 = load i32, i32 addrspace(5)* %1412, align 4, !dbg !221
  %1414 = add i64 %1203, %1362, !dbg !222
  %1415 = add i64 %1414, %1202, !dbg !223
  %1416 = add i64 %1415, %1204, !dbg !224
  %1417 = getelementptr float, float* %23, i64 %1416, !dbg !225
  %1418 = bitcast float* %1417 to i32*, !dbg !226
  store i32 %1413, i32* %1418, align 4, !dbg !226
  %1419 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 23, !dbg !227
  %1420 = bitcast float addrspace(5)* %1419 to i32 addrspace(5)*, !dbg !221
  %1421 = load i32, i32 addrspace(5)* %1420, align 4, !dbg !221
  %1422 = add i64 %1220, %1362, !dbg !222
  %1423 = add i64 %1422, %1219, !dbg !223
  %1424 = add i64 %1423, %1221, !dbg !224
  %1425 = getelementptr float, float* %23, i64 %1424, !dbg !225
  %1426 = bitcast float* %1425 to i32*, !dbg !226
  store i32 %1421, i32* %1426, align 4, !dbg !226
  %1427 = add nsw i64 %1229, %1227, !dbg !22
  %1428 = mul nsw i64 %1427, 900, !dbg !22
  %1429 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 24, !dbg !227
  %1430 = bitcast float addrspace(5)* %1429 to i32 addrspace(5)*, !dbg !221
  %1431 = load i32, i32 addrspace(5)* %1430, align 4, !dbg !221
  %1432 = add i64 %1092, %1428, !dbg !222
  %1433 = add i64 %1432, %1091, !dbg !223
  %1434 = add i64 %1433, %1093, !dbg !224
  %1435 = getelementptr float, float* %23, i64 %1434, !dbg !225
  %1436 = bitcast float* %1435 to i32*, !dbg !226
  store i32 %1431, i32* %1436, align 4, !dbg !226
  %1437 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 25, !dbg !227
  %1438 = bitcast float addrspace(5)* %1437 to i32 addrspace(5)*, !dbg !221
  %1439 = load i32, i32 addrspace(5)* %1438, align 4, !dbg !221
  %1440 = add i64 %1111, %1428, !dbg !222
  %1441 = add i64 %1440, %1110, !dbg !223
  %1442 = add i64 %1441, %1112, !dbg !224
  %1443 = getelementptr float, float* %23, i64 %1442, !dbg !225
  %1444 = bitcast float* %1443 to i32*, !dbg !226
  store i32 %1439, i32* %1444, align 4, !dbg !226
  %1445 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 26, !dbg !227
  %1446 = bitcast float addrspace(5)* %1445 to i32 addrspace(5)*, !dbg !221
  %1447 = load i32, i32 addrspace(5)* %1446, align 4, !dbg !221
  %1448 = add i64 %1130, %1428, !dbg !222
  %1449 = add i64 %1448, %1129, !dbg !223
  %1450 = add i64 %1449, %1131, !dbg !224
  %1451 = getelementptr float, float* %23, i64 %1450, !dbg !225
  %1452 = bitcast float* %1451 to i32*, !dbg !226
  store i32 %1447, i32* %1452, align 4, !dbg !226
  %1453 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 27, !dbg !227
  %1454 = bitcast float addrspace(5)* %1453 to i32 addrspace(5)*, !dbg !221
  %1455 = load i32, i32 addrspace(5)* %1454, align 4, !dbg !221
  %1456 = add i64 %1149, %1428, !dbg !222
  %1457 = add i64 %1456, %1148, !dbg !223
  %1458 = add i64 %1457, %1150, !dbg !224
  %1459 = getelementptr float, float* %23, i64 %1458, !dbg !225
  %1460 = bitcast float* %1459 to i32*, !dbg !226
  store i32 %1455, i32* %1460, align 4, !dbg !226
  %1461 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 28, !dbg !227
  %1462 = bitcast float addrspace(5)* %1461 to i32 addrspace(5)*, !dbg !221
  %1463 = load i32, i32 addrspace(5)* %1462, align 4, !dbg !221
  %1464 = add i64 %1169, %1428, !dbg !222
  %1465 = add i64 %1464, %1168, !dbg !223
  %1466 = add i64 %1465, %1170, !dbg !224
  %1467 = getelementptr float, float* %23, i64 %1466, !dbg !225
  %1468 = bitcast float* %1467 to i32*, !dbg !226
  store i32 %1463, i32* %1468, align 4, !dbg !226
  %1469 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 29, !dbg !227
  %1470 = bitcast float addrspace(5)* %1469 to i32 addrspace(5)*, !dbg !221
  %1471 = load i32, i32 addrspace(5)* %1470, align 4, !dbg !221
  %1472 = add i64 %1186, %1428, !dbg !222
  %1473 = add i64 %1472, %1185, !dbg !223
  %1474 = add i64 %1473, %1187, !dbg !224
  %1475 = getelementptr float, float* %23, i64 %1474, !dbg !225
  %1476 = bitcast float* %1475 to i32*, !dbg !226
  store i32 %1471, i32* %1476, align 4, !dbg !226
  %1477 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 30, !dbg !227
  %1478 = bitcast float addrspace(5)* %1477 to i32 addrspace(5)*, !dbg !221
  %1479 = load i32, i32 addrspace(5)* %1478, align 4, !dbg !221
  %1480 = add i64 %1203, %1428, !dbg !222
  %1481 = add i64 %1480, %1202, !dbg !223
  %1482 = add i64 %1481, %1204, !dbg !224
  %1483 = getelementptr float, float* %23, i64 %1482, !dbg !225
  %1484 = bitcast float* %1483 to i32*, !dbg !226
  store i32 %1479, i32* %1484, align 4, !dbg !226
  %1485 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 31, !dbg !227
  %1486 = bitcast float addrspace(5)* %1485 to i32 addrspace(5)*, !dbg !221
  %1487 = load i32, i32 addrspace(5)* %1486, align 4, !dbg !221
  %1488 = add i64 %1220, %1428, !dbg !222
  %1489 = add i64 %1488, %1219, !dbg !223
  %1490 = add i64 %1489, %1221, !dbg !224
  %1491 = getelementptr float, float* %23, i64 %1490, !dbg !225
  %1492 = bitcast float* %1491 to i32*, !dbg !226
  store i32 %1487, i32* %1492, align 4, !dbg !226
  %1493 = add nsw i32 %1069, 1, !dbg !22
  %1494 = sext i32 %1493 to i64, !dbg !22
  %1495 = shl nsw i64 %1494, 6, !dbg !22
  %1496 = add nsw i64 %1495, %1073, !dbg !22
  %1497 = mul nsw i64 %1496, 900, !dbg !22
  %1498 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 32, !dbg !227
  %1499 = bitcast float addrspace(5)* %1498 to i32 addrspace(5)*, !dbg !221
  %1500 = load i32, i32 addrspace(5)* %1499, align 4, !dbg !221
  %1501 = add i64 %1092, %1497, !dbg !222
  %1502 = add i64 %1501, %1091, !dbg !223
  %1503 = add i64 %1502, %1093, !dbg !224
  %1504 = getelementptr float, float* %23, i64 %1503, !dbg !225
  %1505 = bitcast float* %1504 to i32*, !dbg !226
  store i32 %1500, i32* %1505, align 4, !dbg !226
  %1506 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 33, !dbg !227
  %1507 = bitcast float addrspace(5)* %1506 to i32 addrspace(5)*, !dbg !221
  %1508 = load i32, i32 addrspace(5)* %1507, align 4, !dbg !221
  %1509 = add i64 %1111, %1497, !dbg !222
  %1510 = add i64 %1509, %1110, !dbg !223
  %1511 = add i64 %1510, %1112, !dbg !224
  %1512 = getelementptr float, float* %23, i64 %1511, !dbg !225
  %1513 = bitcast float* %1512 to i32*, !dbg !226
  store i32 %1508, i32* %1513, align 4, !dbg !226
  %1514 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 34, !dbg !227
  %1515 = bitcast float addrspace(5)* %1514 to i32 addrspace(5)*, !dbg !221
  %1516 = load i32, i32 addrspace(5)* %1515, align 4, !dbg !221
  %1517 = add i64 %1130, %1497, !dbg !222
  %1518 = add i64 %1517, %1129, !dbg !223
  %1519 = add i64 %1518, %1131, !dbg !224
  %1520 = getelementptr float, float* %23, i64 %1519, !dbg !225
  %1521 = bitcast float* %1520 to i32*, !dbg !226
  store i32 %1516, i32* %1521, align 4, !dbg !226
  %1522 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 35, !dbg !227
  %1523 = bitcast float addrspace(5)* %1522 to i32 addrspace(5)*, !dbg !221
  %1524 = load i32, i32 addrspace(5)* %1523, align 4, !dbg !221
  %1525 = add i64 %1149, %1497, !dbg !222
  %1526 = add i64 %1525, %1148, !dbg !223
  %1527 = add i64 %1526, %1150, !dbg !224
  %1528 = getelementptr float, float* %23, i64 %1527, !dbg !225
  %1529 = bitcast float* %1528 to i32*, !dbg !226
  store i32 %1524, i32* %1529, align 4, !dbg !226
  %1530 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 36, !dbg !227
  %1531 = bitcast float addrspace(5)* %1530 to i32 addrspace(5)*, !dbg !221
  %1532 = load i32, i32 addrspace(5)* %1531, align 4, !dbg !221
  %1533 = add i64 %1169, %1497, !dbg !222
  %1534 = add i64 %1533, %1168, !dbg !223
  %1535 = add i64 %1534, %1170, !dbg !224
  %1536 = getelementptr float, float* %23, i64 %1535, !dbg !225
  %1537 = bitcast float* %1536 to i32*, !dbg !226
  store i32 %1532, i32* %1537, align 4, !dbg !226
  %1538 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 37, !dbg !227
  %1539 = bitcast float addrspace(5)* %1538 to i32 addrspace(5)*, !dbg !221
  %1540 = load i32, i32 addrspace(5)* %1539, align 4, !dbg !221
  %1541 = add i64 %1186, %1497, !dbg !222
  %1542 = add i64 %1541, %1185, !dbg !223
  %1543 = add i64 %1542, %1187, !dbg !224
  %1544 = getelementptr float, float* %23, i64 %1543, !dbg !225
  %1545 = bitcast float* %1544 to i32*, !dbg !226
  store i32 %1540, i32* %1545, align 4, !dbg !226
  %1546 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 38, !dbg !227
  %1547 = bitcast float addrspace(5)* %1546 to i32 addrspace(5)*, !dbg !221
  %1548 = load i32, i32 addrspace(5)* %1547, align 4, !dbg !221
  %1549 = add i64 %1203, %1497, !dbg !222
  %1550 = add i64 %1549, %1202, !dbg !223
  %1551 = add i64 %1550, %1204, !dbg !224
  %1552 = getelementptr float, float* %23, i64 %1551, !dbg !225
  %1553 = bitcast float* %1552 to i32*, !dbg !226
  store i32 %1548, i32* %1553, align 4, !dbg !226
  %1554 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 39, !dbg !227
  %1555 = bitcast float addrspace(5)* %1554 to i32 addrspace(5)*, !dbg !221
  %1556 = load i32, i32 addrspace(5)* %1555, align 4, !dbg !221
  %1557 = add i64 %1220, %1497, !dbg !222
  %1558 = add i64 %1557, %1219, !dbg !223
  %1559 = add i64 %1558, %1221, !dbg !224
  %1560 = getelementptr float, float* %23, i64 %1559, !dbg !225
  %1561 = bitcast float* %1560 to i32*, !dbg !226
  store i32 %1556, i32* %1561, align 4, !dbg !226
  %1562 = add nsw i64 %1495, %1223, !dbg !22
  %1563 = mul nsw i64 %1562, 900, !dbg !22
  %1564 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 40, !dbg !227
  %1565 = bitcast float addrspace(5)* %1564 to i32 addrspace(5)*, !dbg !221
  %1566 = load i32, i32 addrspace(5)* %1565, align 4, !dbg !221
  %1567 = add i64 %1092, %1563, !dbg !222
  %1568 = add i64 %1567, %1091, !dbg !223
  %1569 = add i64 %1568, %1093, !dbg !224
  %1570 = getelementptr float, float* %23, i64 %1569, !dbg !225
  %1571 = bitcast float* %1570 to i32*, !dbg !226
  store i32 %1566, i32* %1571, align 4, !dbg !226
  %1572 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 41, !dbg !227
  %1573 = bitcast float addrspace(5)* %1572 to i32 addrspace(5)*, !dbg !221
  %1574 = load i32, i32 addrspace(5)* %1573, align 4, !dbg !221
  %1575 = add i64 %1111, %1563, !dbg !222
  %1576 = add i64 %1575, %1110, !dbg !223
  %1577 = add i64 %1576, %1112, !dbg !224
  %1578 = getelementptr float, float* %23, i64 %1577, !dbg !225
  %1579 = bitcast float* %1578 to i32*, !dbg !226
  store i32 %1574, i32* %1579, align 4, !dbg !226
  %1580 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 42, !dbg !227
  %1581 = bitcast float addrspace(5)* %1580 to i32 addrspace(5)*, !dbg !221
  %1582 = load i32, i32 addrspace(5)* %1581, align 4, !dbg !221
  %1583 = add i64 %1130, %1563, !dbg !222
  %1584 = add i64 %1583, %1129, !dbg !223
  %1585 = add i64 %1584, %1131, !dbg !224
  %1586 = getelementptr float, float* %23, i64 %1585, !dbg !225
  %1587 = bitcast float* %1586 to i32*, !dbg !226
  store i32 %1582, i32* %1587, align 4, !dbg !226
  %1588 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 43, !dbg !227
  %1589 = bitcast float addrspace(5)* %1588 to i32 addrspace(5)*, !dbg !221
  %1590 = load i32, i32 addrspace(5)* %1589, align 4, !dbg !221
  %1591 = add i64 %1149, %1563, !dbg !222
  %1592 = add i64 %1591, %1148, !dbg !223
  %1593 = add i64 %1592, %1150, !dbg !224
  %1594 = getelementptr float, float* %23, i64 %1593, !dbg !225
  %1595 = bitcast float* %1594 to i32*, !dbg !226
  store i32 %1590, i32* %1595, align 4, !dbg !226
  %1596 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 44, !dbg !227
  %1597 = bitcast float addrspace(5)* %1596 to i32 addrspace(5)*, !dbg !221
  %1598 = load i32, i32 addrspace(5)* %1597, align 4, !dbg !221
  %1599 = add i64 %1169, %1563, !dbg !222
  %1600 = add i64 %1599, %1168, !dbg !223
  %1601 = add i64 %1600, %1170, !dbg !224
  %1602 = getelementptr float, float* %23, i64 %1601, !dbg !225
  %1603 = bitcast float* %1602 to i32*, !dbg !226
  store i32 %1598, i32* %1603, align 4, !dbg !226
  %1604 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 45, !dbg !227
  %1605 = bitcast float addrspace(5)* %1604 to i32 addrspace(5)*, !dbg !221
  %1606 = load i32, i32 addrspace(5)* %1605, align 4, !dbg !221
  %1607 = add i64 %1186, %1563, !dbg !222
  %1608 = add i64 %1607, %1185, !dbg !223
  %1609 = add i64 %1608, %1187, !dbg !224
  %1610 = getelementptr float, float* %23, i64 %1609, !dbg !225
  %1611 = bitcast float* %1610 to i32*, !dbg !226
  store i32 %1606, i32* %1611, align 4, !dbg !226
  %1612 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 46, !dbg !227
  %1613 = bitcast float addrspace(5)* %1612 to i32 addrspace(5)*, !dbg !221
  %1614 = load i32, i32 addrspace(5)* %1613, align 4, !dbg !221
  %1615 = add i64 %1203, %1563, !dbg !222
  %1616 = add i64 %1615, %1202, !dbg !223
  %1617 = add i64 %1616, %1204, !dbg !224
  %1618 = getelementptr float, float* %23, i64 %1617, !dbg !225
  %1619 = bitcast float* %1618 to i32*, !dbg !226
  store i32 %1614, i32* %1619, align 4, !dbg !226
  %1620 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 47, !dbg !227
  %1621 = bitcast float addrspace(5)* %1620 to i32 addrspace(5)*, !dbg !221
  %1622 = load i32, i32 addrspace(5)* %1621, align 4, !dbg !221
  %1623 = add i64 %1220, %1563, !dbg !222
  %1624 = add i64 %1623, %1219, !dbg !223
  %1625 = add i64 %1624, %1221, !dbg !224
  %1626 = getelementptr float, float* %23, i64 %1625, !dbg !225
  %1627 = bitcast float* %1626 to i32*, !dbg !226
  store i32 %1622, i32* %1627, align 4, !dbg !226
  %1628 = add nsw i64 %1495, %1225, !dbg !22
  %1629 = mul nsw i64 %1628, 900, !dbg !22
  %1630 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 48, !dbg !227
  %1631 = bitcast float addrspace(5)* %1630 to i32 addrspace(5)*, !dbg !221
  %1632 = load i32, i32 addrspace(5)* %1631, align 4, !dbg !221
  %1633 = add i64 %1092, %1629, !dbg !222
  %1634 = add i64 %1633, %1091, !dbg !223
  %1635 = add i64 %1634, %1093, !dbg !224
  %1636 = getelementptr float, float* %23, i64 %1635, !dbg !225
  %1637 = bitcast float* %1636 to i32*, !dbg !226
  store i32 %1632, i32* %1637, align 4, !dbg !226
  %1638 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 49, !dbg !227
  %1639 = bitcast float addrspace(5)* %1638 to i32 addrspace(5)*, !dbg !221
  %1640 = load i32, i32 addrspace(5)* %1639, align 4, !dbg !221
  %1641 = add i64 %1111, %1629, !dbg !222
  %1642 = add i64 %1641, %1110, !dbg !223
  %1643 = add i64 %1642, %1112, !dbg !224
  %1644 = getelementptr float, float* %23, i64 %1643, !dbg !225
  %1645 = bitcast float* %1644 to i32*, !dbg !226
  store i32 %1640, i32* %1645, align 4, !dbg !226
  %1646 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 50, !dbg !227
  %1647 = bitcast float addrspace(5)* %1646 to i32 addrspace(5)*, !dbg !221
  %1648 = load i32, i32 addrspace(5)* %1647, align 4, !dbg !221
  %1649 = add i64 %1130, %1629, !dbg !222
  %1650 = add i64 %1649, %1129, !dbg !223
  %1651 = add i64 %1650, %1131, !dbg !224
  %1652 = getelementptr float, float* %23, i64 %1651, !dbg !225
  %1653 = bitcast float* %1652 to i32*, !dbg !226
  store i32 %1648, i32* %1653, align 4, !dbg !226
  %1654 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 51, !dbg !227
  %1655 = bitcast float addrspace(5)* %1654 to i32 addrspace(5)*, !dbg !221
  %1656 = load i32, i32 addrspace(5)* %1655, align 4, !dbg !221
  %1657 = add i64 %1149, %1629, !dbg !222
  %1658 = add i64 %1657, %1148, !dbg !223
  %1659 = add i64 %1658, %1150, !dbg !224
  %1660 = getelementptr float, float* %23, i64 %1659, !dbg !225
  %1661 = bitcast float* %1660 to i32*, !dbg !226
  store i32 %1656, i32* %1661, align 4, !dbg !226
  %1662 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 52, !dbg !227
  %1663 = bitcast float addrspace(5)* %1662 to i32 addrspace(5)*, !dbg !221
  %1664 = load i32, i32 addrspace(5)* %1663, align 4, !dbg !221
  %1665 = add i64 %1169, %1629, !dbg !222
  %1666 = add i64 %1665, %1168, !dbg !223
  %1667 = add i64 %1666, %1170, !dbg !224
  %1668 = getelementptr float, float* %23, i64 %1667, !dbg !225
  %1669 = bitcast float* %1668 to i32*, !dbg !226
  store i32 %1664, i32* %1669, align 4, !dbg !226
  %1670 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 53, !dbg !227
  %1671 = bitcast float addrspace(5)* %1670 to i32 addrspace(5)*, !dbg !221
  %1672 = load i32, i32 addrspace(5)* %1671, align 4, !dbg !221
  %1673 = add i64 %1186, %1629, !dbg !222
  %1674 = add i64 %1673, %1185, !dbg !223
  %1675 = add i64 %1674, %1187, !dbg !224
  %1676 = getelementptr float, float* %23, i64 %1675, !dbg !225
  %1677 = bitcast float* %1676 to i32*, !dbg !226
  store i32 %1672, i32* %1677, align 4, !dbg !226
  %1678 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 54, !dbg !227
  %1679 = bitcast float addrspace(5)* %1678 to i32 addrspace(5)*, !dbg !221
  %1680 = load i32, i32 addrspace(5)* %1679, align 4, !dbg !221
  %1681 = add i64 %1203, %1629, !dbg !222
  %1682 = add i64 %1681, %1202, !dbg !223
  %1683 = add i64 %1682, %1204, !dbg !224
  %1684 = getelementptr float, float* %23, i64 %1683, !dbg !225
  %1685 = bitcast float* %1684 to i32*, !dbg !226
  store i32 %1680, i32* %1685, align 4, !dbg !226
  %1686 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 55, !dbg !227
  %1687 = bitcast float addrspace(5)* %1686 to i32 addrspace(5)*, !dbg !221
  %1688 = load i32, i32 addrspace(5)* %1687, align 4, !dbg !221
  %1689 = add i64 %1220, %1629, !dbg !222
  %1690 = add i64 %1689, %1219, !dbg !223
  %1691 = add i64 %1690, %1221, !dbg !224
  %1692 = getelementptr float, float* %23, i64 %1691, !dbg !225
  %1693 = bitcast float* %1692 to i32*, !dbg !226
  store i32 %1688, i32* %1693, align 4, !dbg !226
  %1694 = add nsw i64 %1495, %1227, !dbg !22
  %1695 = mul nsw i64 %1694, 900, !dbg !22
  %1696 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 56, !dbg !227
  %1697 = bitcast float addrspace(5)* %1696 to i32 addrspace(5)*, !dbg !221
  %1698 = load i32, i32 addrspace(5)* %1697, align 4, !dbg !221
  %1699 = add i64 %1092, %1695, !dbg !222
  %1700 = add i64 %1699, %1091, !dbg !223
  %1701 = add i64 %1700, %1093, !dbg !224
  %1702 = getelementptr float, float* %23, i64 %1701, !dbg !225
  %1703 = bitcast float* %1702 to i32*, !dbg !226
  store i32 %1698, i32* %1703, align 4, !dbg !226
  %1704 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 57, !dbg !227
  %1705 = bitcast float addrspace(5)* %1704 to i32 addrspace(5)*, !dbg !221
  %1706 = load i32, i32 addrspace(5)* %1705, align 4, !dbg !221
  %1707 = add i64 %1111, %1695, !dbg !222
  %1708 = add i64 %1707, %1110, !dbg !223
  %1709 = add i64 %1708, %1112, !dbg !224
  %1710 = getelementptr float, float* %23, i64 %1709, !dbg !225
  %1711 = bitcast float* %1710 to i32*, !dbg !226
  store i32 %1706, i32* %1711, align 4, !dbg !226
  %1712 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 58, !dbg !227
  %1713 = bitcast float addrspace(5)* %1712 to i32 addrspace(5)*, !dbg !221
  %1714 = load i32, i32 addrspace(5)* %1713, align 4, !dbg !221
  %1715 = add i64 %1130, %1695, !dbg !222
  %1716 = add i64 %1715, %1129, !dbg !223
  %1717 = add i64 %1716, %1131, !dbg !224
  %1718 = getelementptr float, float* %23, i64 %1717, !dbg !225
  %1719 = bitcast float* %1718 to i32*, !dbg !226
  store i32 %1714, i32* %1719, align 4, !dbg !226
  %1720 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 59, !dbg !227
  %1721 = bitcast float addrspace(5)* %1720 to i32 addrspace(5)*, !dbg !221
  %1722 = load i32, i32 addrspace(5)* %1721, align 4, !dbg !221
  %1723 = add i64 %1149, %1695, !dbg !222
  %1724 = add i64 %1723, %1148, !dbg !223
  %1725 = add i64 %1724, %1150, !dbg !224
  %1726 = getelementptr float, float* %23, i64 %1725, !dbg !225
  %1727 = bitcast float* %1726 to i32*, !dbg !226
  store i32 %1722, i32* %1727, align 4, !dbg !226
  %1728 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 60, !dbg !227
  %1729 = bitcast float addrspace(5)* %1728 to i32 addrspace(5)*, !dbg !221
  %1730 = load i32, i32 addrspace(5)* %1729, align 4, !dbg !221
  %1731 = add i64 %1169, %1695, !dbg !222
  %1732 = add i64 %1731, %1168, !dbg !223
  %1733 = add i64 %1732, %1170, !dbg !224
  %1734 = getelementptr float, float* %23, i64 %1733, !dbg !225
  %1735 = bitcast float* %1734 to i32*, !dbg !226
  store i32 %1730, i32* %1735, align 4, !dbg !226
  %1736 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 61, !dbg !227
  %1737 = bitcast float addrspace(5)* %1736 to i32 addrspace(5)*, !dbg !221
  %1738 = load i32, i32 addrspace(5)* %1737, align 4, !dbg !221
  %1739 = add i64 %1186, %1695, !dbg !222
  %1740 = add i64 %1739, %1185, !dbg !223
  %1741 = add i64 %1740, %1187, !dbg !224
  %1742 = getelementptr float, float* %23, i64 %1741, !dbg !225
  %1743 = bitcast float* %1742 to i32*, !dbg !226
  store i32 %1738, i32* %1743, align 4, !dbg !226
  %1744 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 62, !dbg !227
  %1745 = bitcast float addrspace(5)* %1744 to i32 addrspace(5)*, !dbg !221
  %1746 = load i32, i32 addrspace(5)* %1745, align 4, !dbg !221
  %1747 = add i64 %1203, %1695, !dbg !222
  %1748 = add i64 %1747, %1202, !dbg !223
  %1749 = add i64 %1748, %1204, !dbg !224
  %1750 = getelementptr float, float* %23, i64 %1749, !dbg !225
  %1751 = bitcast float* %1750 to i32*, !dbg !226
  store i32 %1746, i32* %1751, align 4, !dbg !226
  %1752 = getelementptr inbounds <64 x float>, <64 x float> addrspace(5)* %33, i32 0, i32 63, !dbg !227
  %1753 = bitcast float addrspace(5)* %1752 to i32 addrspace(5)*, !dbg !221
  %1754 = load i32, i32 addrspace(5)* %1753, align 4, !dbg !221
  %1755 = add i64 %1220, %1695, !dbg !222
  %1756 = add i64 %1755, %1219, !dbg !223
  %1757 = add i64 %1756, %1221, !dbg !224
  %1758 = getelementptr float, float* %23, i64 %1757, !dbg !225
  %1759 = bitcast float* %1758 to i32*, !dbg !226
  store i32 %1754, i32* %1759, align 4, !dbg !226
  ret void, !dbg !228
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.amdgcn.workgroup.id.x() #1

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.amdgcn.workitem.id.x() #1

; Function Attrs: convergent nounwind
declare void @llvm.amdgcn.s.barrier() #2

attributes #0 = { nounwind "amdgpu-flat-work-group-size"="1, 256" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { convergent nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "miopen_conv2d_kcyx_nchw_nkhw", linkageName: "miopen_conv2d_kcyx_nchw_nkhw", scope: null, file: !4, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "<stdin>", directory: "/root/llvm-project-mlir/build")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 56, column: 13, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 290, column: 14, scope: !8)
!10 = !DILocation(line: 291, column: 14, scope: !8)
!11 = !DILocation(line: 292, column: 14, scope: !8)
!12 = !DILocation(line: 296, column: 14, scope: !8)
!13 = !DILocation(line: 297, column: 14, scope: !8)
!14 = !DILocation(line: 298, column: 14, scope: !8)
!15 = !DILocation(line: 299, column: 14, scope: !8)
!16 = !DILocation(line: 301, column: 14, scope: !8)
!17 = !DILocation(line: 304, column: 14, scope: !8)
!18 = !DILocation(line: 305, column: 14, scope: !8)
!19 = !DILocation(line: 306, column: 14, scope: !8)
!20 = !DILocation(line: 310, column: 14, scope: !8)
!21 = !DILocation(line: 311, column: 14, scope: !8)
!22 = !DILocation(line: 0, scope: !8)
!23 = !DILocation(line: 303, column: 14, scope: !8)
!24 = !DILocation(line: 309, column: 14, scope: !8)
!25 = !DILocation(line: 1030, column: 7, scope: !8)
!26 = !DILocation(line: 1058, column: 7, scope: !8)
!27 = !DILocation(line: 1080, column: 14, scope: !8)
!28 = !DILocation(line: 1081, column: 14, scope: !8)
!29 = !DILocation(line: 1082, column: 14, scope: !8)
!30 = !DILocation(line: 1084, column: 14, scope: !8)
!31 = !DILocation(line: 1086, column: 14, scope: !8)
!32 = !DILocation(line: 1087, column: 14, scope: !8)
!33 = !DILocation(line: 1088, column: 14, scope: !8)
!34 = !DILocation(line: 1089, column: 14, scope: !8)
!35 = !DILocation(line: 1090, column: 14, scope: !8)
!36 = !DILocation(line: 1091, column: 14, scope: !8)
!37 = !DILocation(line: 1092, column: 14, scope: !8)
!38 = !DILocation(line: 1094, column: 14, scope: !8)
!39 = !DILocation(line: 1128, column: 14, scope: !8)
!40 = !DILocation(line: 1129, column: 14, scope: !8)
!41 = !DILocation(line: 1131, column: 14, scope: !8)
!42 = !DILocation(line: 1133, column: 15, scope: !8)
!43 = !DILocation(line: 1134, column: 15, scope: !8)
!44 = !DILocation(line: 1135, column: 15, scope: !8)
!45 = !DILocation(line: 1138, column: 15, scope: !8)
!46 = !DILocation(line: 1139, column: 15, scope: !8)
!47 = !DILocation(line: 1141, column: 15, scope: !8)
!48 = !DILocation(line: 1146, column: 15, scope: !8)
!49 = !DILocation(line: 1147, column: 15, scope: !8)
!50 = !DILocation(line: 1148, column: 15, scope: !8)
!51 = !DILocation(line: 1149, column: 15, scope: !8)
!52 = !DILocation(line: 1156, column: 15, scope: !8)
!53 = !DILocation(line: 1157, column: 15, scope: !8)
!54 = !DILocation(line: 1159, column: 15, scope: !8)
!55 = !DILocation(line: 1160, column: 15, scope: !8)
!56 = !DILocation(line: 1163, column: 15, scope: !8)
!57 = !DILocation(line: 1164, column: 15, scope: !8)
!58 = !DILocation(line: 1165, column: 15, scope: !8)
!59 = !DILocation(line: 1122, column: 14, scope: !8)
!60 = !DILocation(line: 1123, column: 14, scope: !8)
!61 = !DILocation(line: 1132, column: 15, scope: !8)
!62 = !DILocation(line: 1037, column: 7, scope: !8)
!63 = !DILocation(line: 1065, column: 7, scope: !8)
!64 = !DILocation(line: 1093, column: 14, scope: !8)
!65 = !DILocation(line: 1095, column: 14, scope: !8)
!66 = !DILocation(line: 1229, column: 15, scope: !8)
!67 = !DILocation(line: 1230, column: 7, scope: !8)
!68 = !DILocation(line: 1223, column: 15, scope: !8)
!69 = !DILocation(line: 1266, column: 15, scope: !8)
!70 = !DILocation(line: 1269, column: 15, scope: !8)
!71 = !DILocation(line: 1270, column: 15, scope: !8)
!72 = !DILocation(line: 1272, column: 15, scope: !8)
!73 = !DILocation(line: 1289, column: 15, scope: !8)
!74 = !DILocation(line: 1290, column: 15, scope: !8)
!75 = !DILocation(line: 1291, column: 15, scope: !8)
!76 = !DILocation(line: 1292, column: 15, scope: !8)
!77 = !DILocation(line: 1295, column: 15, scope: !8)
!78 = !DILocation(line: 1296, column: 15, scope: !8)
!79 = !DILocation(line: 1298, column: 15, scope: !8)
!80 = !DILocation(line: 1299, column: 15, scope: !8)
!81 = !DILocation(line: 1312, column: 15, scope: !8)
!82 = !DILocation(line: 1313, column: 15, scope: !8)
!83 = !DILocation(line: 1314, column: 15, scope: !8)
!84 = !DILocation(line: 1315, column: 15, scope: !8)
!85 = !DILocation(line: 1320, column: 15, scope: !8)
!86 = !DILocation(line: 1326, column: 15, scope: !8)
!87 = !DILocation(line: 1327, column: 15, scope: !8)
!88 = !DILocation(line: 1316, column: 15, scope: !8)
!89 = !DILocation(line: 1330, column: 15, scope: !8)
!90 = !DILocation(line: 1331, column: 15, scope: !8)
!91 = !DILocation(line: 1332, column: 15, scope: !8)
!92 = !DILocation(line: 1265, column: 15, scope: !8)
!93 = !DILocation(line: 1397, column: 15, scope: !8)
!94 = !DILocation(line: 1398, column: 7, scope: !8)
!95 = !DILocation(line: 1391, column: 15, scope: !8)
!96 = !DILocation(line: 1408, column: 7, scope: !8)
!97 = !DILocation(line: 1407, column: 15, scope: !8)
!98 = !DILocation(line: 2531, column: 7, scope: !8)
!99 = !DILocation(line: 1417, column: 15, scope: !8)
!100 = !DILocation(line: 1418, column: 15, scope: !8)
!101 = !DILocation(line: 1432, column: 15, scope: !8)
!102 = !DILocation(line: 1467, column: 15, scope: !8)
!103 = !DILocation(line: 1472, column: 15, scope: !8)
!104 = !DILocation(line: 1473, column: 15, scope: !8)
!105 = !DILocation(line: 1475, column: 15, scope: !8)
!106 = !DILocation(line: 1476, column: 15, scope: !8)
!107 = !DILocation(line: 1477, column: 15, scope: !8)
!108 = !DILocation(line: 1478, column: 15, scope: !8)
!109 = !DILocation(line: 1479, column: 15, scope: !8)
!110 = !DILocation(line: 1482, column: 15, scope: !8)
!111 = !DILocation(line: 1483, column: 15, scope: !8)
!112 = !DILocation(line: 1485, column: 15, scope: !8)
!113 = !DILocation(line: 1490, column: 15, scope: !8)
!114 = !DILocation(line: 1491, column: 15, scope: !8)
!115 = !DILocation(line: 1492, column: 15, scope: !8)
!116 = !DILocation(line: 1493, column: 15, scope: !8)
!117 = !DILocation(line: 1500, column: 15, scope: !8)
!118 = !DILocation(line: 1501, column: 15, scope: !8)
!119 = !DILocation(line: 1503, column: 15, scope: !8)
!120 = !DILocation(line: 1504, column: 15, scope: !8)
!121 = !DILocation(line: 1507, column: 15, scope: !8)
!122 = !DILocation(line: 1508, column: 15, scope: !8)
!123 = !DILocation(line: 1509, column: 15, scope: !8)
!124 = !DILocation(line: 1466, column: 15, scope: !8)
!125 = !DILocation(line: 1532, column: 15, scope: !8)
!126 = !DILocation(line: 1533, column: 15, scope: !8)
!127 = !DILocation(line: 1547, column: 15, scope: !8)
!128 = !DILocation(line: 1584, column: 15, scope: !8)
!129 = !DILocation(line: 1587, column: 15, scope: !8)
!130 = !DILocation(line: 1588, column: 15, scope: !8)
!131 = !DILocation(line: 1590, column: 15, scope: !8)
!132 = !DILocation(line: 1607, column: 15, scope: !8)
!133 = !DILocation(line: 1608, column: 15, scope: !8)
!134 = !DILocation(line: 1609, column: 15, scope: !8)
!135 = !DILocation(line: 1610, column: 15, scope: !8)
!136 = !DILocation(line: 1613, column: 15, scope: !8)
!137 = !DILocation(line: 1614, column: 15, scope: !8)
!138 = !DILocation(line: 1616, column: 15, scope: !8)
!139 = !DILocation(line: 1617, column: 15, scope: !8)
!140 = !DILocation(line: 1630, column: 15, scope: !8)
!141 = !DILocation(line: 1631, column: 15, scope: !8)
!142 = !DILocation(line: 1632, column: 15, scope: !8)
!143 = !DILocation(line: 1633, column: 15, scope: !8)
!144 = !DILocation(line: 1638, column: 15, scope: !8)
!145 = !DILocation(line: 1644, column: 15, scope: !8)
!146 = !DILocation(line: 1645, column: 15, scope: !8)
!147 = !DILocation(line: 1634, column: 15, scope: !8)
!148 = !DILocation(line: 1648, column: 15, scope: !8)
!149 = !DILocation(line: 1649, column: 15, scope: !8)
!150 = !DILocation(line: 1650, column: 15, scope: !8)
!151 = !DILocation(line: 1583, column: 15, scope: !8)
!152 = !DILocation(line: 1670, column: 7, scope: !8)
!153 = !DILocation(line: 1904, column: 7, scope: !8)
!154 = !DILocation(line: 1960, column: 7, scope: !8)
!155 = !DILocation(line: 1967, column: 7, scope: !8)
!156 = !DILocation(line: 1975, column: 15, scope: !8)
!157 = !DILocation(line: 2024, column: 15, scope: !8)
!158 = !DILocation(line: 2029, column: 15, scope: !8)
!159 = !DILocation(line: 2030, column: 15, scope: !8)
!160 = !DILocation(line: 2032, column: 15, scope: !8)
!161 = !DILocation(line: 2033, column: 15, scope: !8)
!162 = !DILocation(line: 2034, column: 15, scope: !8)
!163 = !DILocation(line: 2035, column: 15, scope: !8)
!164 = !DILocation(line: 2036, column: 15, scope: !8)
!165 = !DILocation(line: 2039, column: 15, scope: !8)
!166 = !DILocation(line: 2040, column: 15, scope: !8)
!167 = !DILocation(line: 2042, column: 15, scope: !8)
!168 = !DILocation(line: 2047, column: 15, scope: !8)
!169 = !DILocation(line: 2048, column: 15, scope: !8)
!170 = !DILocation(line: 2049, column: 15, scope: !8)
!171 = !DILocation(line: 2050, column: 15, scope: !8)
!172 = !DILocation(line: 2057, column: 15, scope: !8)
!173 = !DILocation(line: 2058, column: 15, scope: !8)
!174 = !DILocation(line: 2060, column: 15, scope: !8)
!175 = !DILocation(line: 2061, column: 15, scope: !8)
!176 = !DILocation(line: 2064, column: 15, scope: !8)
!177 = !DILocation(line: 2065, column: 15, scope: !8)
!178 = !DILocation(line: 2066, column: 15, scope: !8)
!179 = !DILocation(line: 2023, column: 15, scope: !8)
!180 = !DILocation(line: 2090, column: 15, scope: !8)
!181 = !DILocation(line: 2174, column: 15, scope: !8)
!182 = !DILocation(line: 2201, column: 15, scope: !8)
!183 = !DILocation(line: 2202, column: 15, scope: !8)
!184 = !DILocation(line: 2191, column: 15, scope: !8)
!185 = !DILocation(line: 2205, column: 15, scope: !8)
!186 = !DILocation(line: 2206, column: 15, scope: !8)
!187 = !DILocation(line: 2207, column: 15, scope: !8)
!188 = !DILocation(line: 1982, column: 7, scope: !8)
!189 = !DILocation(line: 2227, column: 7, scope: !8)
!190 = !DILocation(line: 1706, column: 15, scope: !8)
!191 = !DILocation(line: 1707, column: 15, scope: !8)
!192 = !DILocation(line: 1763, column: 15, scope: !8)
!193 = !DILocation(line: 1764, column: 15, scope: !8)
!194 = !DILocation(line: 1821, column: 15, scope: !8)
!195 = !DILocation(line: 1832, column: 15, scope: !8)
!196 = !DILocation(line: 1852, column: 15, scope: !8)
!197 = !DILocation(line: 1669, column: 15, scope: !8)
!198 = !DILocation(line: 2461, column: 7, scope: !8)
!199 = !DILocation(line: 2517, column: 7, scope: !8)
!200 = !DILocation(line: 2097, column: 7, scope: !8)
!201 = !DILocation(line: 2524, column: 15, scope: !8)
!202 = !DILocation(line: 2525, column: 7, scope: !8)
!203 = !DILocation(line: 2264, column: 15, scope: !8)
!204 = !DILocation(line: 2265, column: 15, scope: !8)
!205 = !DILocation(line: 2321, column: 15, scope: !8)
!206 = !DILocation(line: 2322, column: 15, scope: !8)
!207 = !DILocation(line: 2379, column: 15, scope: !8)
!208 = !DILocation(line: 2390, column: 15, scope: !8)
!209 = !DILocation(line: 2410, column: 15, scope: !8)
!210 = !DILocation(line: 2226, column: 15, scope: !8)
!211 = !DILocation(line: 2568, column: 15, scope: !8)
!212 = !DILocation(line: 2569, column: 15, scope: !8)
!213 = !DILocation(line: 2625, column: 15, scope: !8)
!214 = !DILocation(line: 2626, column: 15, scope: !8)
!215 = !DILocation(line: 2683, column: 15, scope: !8)
!216 = !DILocation(line: 2694, column: 15, scope: !8)
!217 = !DILocation(line: 2714, column: 15, scope: !8)
!218 = !DILocation(line: 2530, column: 15, scope: !8)
!219 = !DILocation(line: 2717, column: 15, scope: !8)
!220 = !DILocation(line: 2719, column: 15, scope: !8)
!221 = !DILocation(line: 2758, column: 15, scope: !8)
!222 = !DILocation(line: 2806, column: 15, scope: !8)
!223 = !DILocation(line: 2809, column: 15, scope: !8)
!224 = !DILocation(line: 2812, column: 15, scope: !8)
!225 = !DILocation(line: 2813, column: 15, scope: !8)
!226 = !DILocation(line: 2814, column: 7, scope: !8)
!227 = !DILocation(line: 2757, column: 15, scope: !8)
!228 = !DILocation(line: 2827, column: 7, scope: !8)
