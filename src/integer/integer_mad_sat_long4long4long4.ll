; ModuleID = 'integer_mad_sat_long4long4long4.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_mad_sat_long4long4long4(<4 x i64> addrspace(1)* %src_0, <4 x i64> addrspace(1)* %src_1, <4 x i64> addrspace(1)* %src_2, <4 x i64> addrspace(1)* %dst) #0 {
  %tmp_1 = alloca <4 x i64> addrspace(1)*, align 4
  %tmp_2 = alloca <4 x i64> addrspace(1)*, align 4
  %tmp_3 = alloca <4 x i64> addrspace(1)*, align 4
  %tmp_4 = alloca <4 x i64> addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store <4 x i64> addrspace(1)* %src_0, <4 x i64> addrspace(1)** %tmp_1, align 4
  store <4 x i64> addrspace(1)* %src_1, <4 x i64> addrspace(1)** %tmp_2, align 4
  store <4 x i64> addrspace(1)* %src_2, <4 x i64> addrspace(1)** %tmp_3, align 4
  store <4 x i64> addrspace(1)* %dst, <4 x i64> addrspace(1)** %tmp_4, align 4
  %tmp_5 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_5, i32* %gid, align 4
  %tmp_6 = load <4 x i64> addrspace(1)** %tmp_1, align 4
  %tmp_7 = getelementptr inbounds <4 x i64> addrspace(1)* %tmp_6, i32 0
  %tmp_8 = load <4 x i64> addrspace(1)* %tmp_7, align 32
  %tmp_9 = load <4 x i64> addrspace(1)** %tmp_2, align 4
  %tmp_10 = getelementptr inbounds <4 x i64> addrspace(1)* %tmp_9, i32 0
  %tmp_11 = load <4 x i64> addrspace(1)* %tmp_10, align 32
  %tmp_12 = load <4 x i64> addrspace(1)** %tmp_3, align 4
  %tmp_13 = getelementptr inbounds <4 x i64> addrspace(1)* %tmp_12, i32 0
  %tmp_14 = load <4 x i64> addrspace(1)* %tmp_13, align 32
  %tmp_15 = call <4 x i64> @_Z7mad_satDv4_lS_S_(<4 x i64> %tmp_8, <4 x i64> %tmp_11, <4 x i64> %tmp_14)
  %tmp_16 = load i32* %gid, align 4
  %tmp_17 = load <4 x i64> addrspace(1)** %tmp_4, align 4
  %tmp_18 = getelementptr inbounds <4 x i64> addrspace(1)* %tmp_17, i32 %tmp_16
  store <4 x i64> %tmp_15, <4 x i64> addrspace(1)* %tmp_18, align 32
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare <4 x i64> @_Z7mad_satDv4_lS_S_(<4 x i64>, <4 x i64>, <4 x i64>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<4 x i64> addrspace(1)*, <4 x i64> addrspace(1)*, <4 x i64> addrspace(1)*, <4 x i64> addrspace(1)*)* @integer_mad_sat_long4long4long4}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
