; ModuleID = 'math_fma_float16float16float16.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_fma_float16float16float16(<16 x float> addrspace(1)* %src_0, <16 x float> addrspace(1)* %src_1, <16 x float> addrspace(1)* %src_2, <16 x float> addrspace(1)* %dst) #0 {
entry:
  %tmp_1 = alloca <16 x float> addrspace(1)*, align 4
  %tmp_2 = alloca <16 x float> addrspace(1)*, align 4
  %tmp_3 = alloca <16 x float> addrspace(1)*, align 4
  %tmp_4 = alloca <16 x float> addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store <16 x float> addrspace(1)* %src_0, <16 x float> addrspace(1)** %tmp_1, align 4
  store <16 x float> addrspace(1)* %src_1, <16 x float> addrspace(1)** %tmp_2, align 4
  store <16 x float> addrspace(1)* %src_2, <16 x float> addrspace(1)** %tmp_3, align 4
  store <16 x float> addrspace(1)* %dst, <16 x float> addrspace(1)** %tmp_4, align 4
  %tmp_5 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_5, i32* %gid, align 4
  %tmp_6 = load i32* %gid, align 4
  %tmp_7 = load <16 x float> addrspace(1)** %tmp_1, align 4
  %tmp_8 = getelementptr inbounds <16 x float> addrspace(1)* %tmp_7, i32 %tmp_6
  %tmp_9 = load <16 x float> addrspace(1)* %tmp_8, align 64
  %tmp_10 = load i32* %gid, align 4
  %tmp_11 = load <16 x float> addrspace(1)** %tmp_2, align 4
  %tmp_12 = getelementptr inbounds <16 x float> addrspace(1)* %tmp_11, i32 %tmp_10
  %tmp_13 = load <16 x float> addrspace(1)* %tmp_12, align 64
  %tmp_14 = load i32* %gid, align 4
  %tmp_15 = load <16 x float> addrspace(1)** %tmp_3, align 4
  %tmp_16 = getelementptr inbounds <16 x float> addrspace(1)* %tmp_15, i32 %tmp_14
  %tmp_17 = load <16 x float> addrspace(1)* %tmp_16, align 64
  %tmp_18 = call <16 x float> @llvm.fma.v16f32(<16 x float> %tmp_9, <16 x float> %tmp_13, <16 x float> %tmp_17)
  %tmp_19 = load i32* %gid, align 4
  %tmp_20 = load <16 x float> addrspace(1)** %tmp_4, align 4
  %tmp_21 = getelementptr inbounds <16 x float> addrspace(1)* %tmp_20, i32 %tmp_19
  store <16 x float> %tmp_18, <16 x float> addrspace(1)* %tmp_21, align 64
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

; Function Attrs: nounwind readnone
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<16 x float> addrspace(1)*, <16 x float> addrspace(1)*, <16 x float> addrspace(1)*, <16 x float> addrspace(1)*)* @math_fma_float16float16float16}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
