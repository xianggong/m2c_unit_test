; ModuleID = 'integer_mad_hi_int16int16int16.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_mad_hi_int16int16int16(<16 x i32> addrspace(1)* %src_0, <16 x i32> addrspace(1)* %src_1, <16 x i32> addrspace(1)* %src_2, <16 x i32> addrspace(1)* %dst) #0 {
entry:
  %tmp_1 = alloca <16 x i32> addrspace(1)*, align 4
  %tmp_2 = alloca <16 x i32> addrspace(1)*, align 4
  %tmp_3 = alloca <16 x i32> addrspace(1)*, align 4
  %tmp_4 = alloca <16 x i32> addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store <16 x i32> addrspace(1)* %src_0, <16 x i32> addrspace(1)** %tmp_1, align 4
  store <16 x i32> addrspace(1)* %src_1, <16 x i32> addrspace(1)** %tmp_2, align 4
  store <16 x i32> addrspace(1)* %src_2, <16 x i32> addrspace(1)** %tmp_3, align 4
  store <16 x i32> addrspace(1)* %dst, <16 x i32> addrspace(1)** %tmp_4, align 4
  %tmp_5 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_5, i32* %gid, align 4
  %tmp_6 = load i32* %gid, align 4
  %tmp_7 = load <16 x i32> addrspace(1)** %tmp_1, align 4
  %tmp_8 = getelementptr inbounds <16 x i32> addrspace(1)* %tmp_7, i32 %tmp_6
  %tmp_9 = load <16 x i32> addrspace(1)* %tmp_8, align 64
  %tmp_10 = load i32* %gid, align 4
  %tmp_11 = load <16 x i32> addrspace(1)** %tmp_2, align 4
  %tmp_12 = getelementptr inbounds <16 x i32> addrspace(1)* %tmp_11, i32 %tmp_10
  %tmp_13 = load <16 x i32> addrspace(1)* %tmp_12, align 64
  %tmp_14 = call <16 x i32> @_Z6mul_hiDv16_iS_(<16 x i32> %tmp_9, <16 x i32> %tmp_13)
  %tmp_15 = load i32* %gid, align 4
  %tmp_16 = load <16 x i32> addrspace(1)** %tmp_3, align 4
  %tmp_17 = getelementptr inbounds <16 x i32> addrspace(1)* %tmp_16, i32 %tmp_15
  %tmp_18 = load <16 x i32> addrspace(1)* %tmp_17, align 64
  %tmp_19 = add <16 x i32> %tmp_14, %tmp_18
  %tmp_20 = load i32* %gid, align 4
  %tmp_21 = load <16 x i32> addrspace(1)** %tmp_4, align 4
  %tmp_22 = getelementptr inbounds <16 x i32> addrspace(1)* %tmp_21, i32 %tmp_20
  store <16 x i32> %tmp_19, <16 x i32> addrspace(1)* %tmp_22, align 64
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare <16 x i32> @_Z6mul_hiDv16_iS_(<16 x i32>, <16 x i32>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<16 x i32> addrspace(1)*, <16 x i32> addrspace(1)*, <16 x i32> addrspace(1)*, <16 x i32> addrspace(1)*)* @integer_mad_hi_int16int16int16}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
