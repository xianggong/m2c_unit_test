; ModuleID = 'operator_remainder_uint2uint2.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @operator_remainder_uint2uint2(<2 x i32> addrspace(1)* %src_0, <2 x i32> addrspace(1)* %src_1, <2 x i32> addrspace(1)* %dst) #0 {
  %tmp_1 = alloca <2 x i32> addrspace(1)*, align 4
  %tmp_2 = alloca <2 x i32> addrspace(1)*, align 4
  %tmp_3 = alloca <2 x i32> addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store <2 x i32> addrspace(1)* %src_0, <2 x i32> addrspace(1)** %tmp_1, align 4
  store <2 x i32> addrspace(1)* %src_1, <2 x i32> addrspace(1)** %tmp_2, align 4
  store <2 x i32> addrspace(1)* %dst, <2 x i32> addrspace(1)** %tmp_3, align 4
  %tmp_4 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_4, i32* %gid, align 4
  %tmp_5 = load i32* %gid, align 4
  %tmp_6 = load <2 x i32> addrspace(1)** %tmp_1, align 4
  %tmp_7 = getelementptr inbounds <2 x i32> addrspace(1)* %tmp_6, i32 %tmp_5
  %tmp_8 = load <2 x i32> addrspace(1)* %tmp_7, align 8
  %tmp_9 = load i32* %gid, align 4
  %tmp_10 = load <2 x i32> addrspace(1)** %tmp_2, align 4
  %tmp_11 = getelementptr inbounds <2 x i32> addrspace(1)* %tmp_10, i32 %tmp_9
  %tmp_12 = load <2 x i32> addrspace(1)* %tmp_11, align 8
  %tmp_13 = urem <2 x i32> %tmp_8, %tmp_12
  %tmp_14 = load i32* %gid, align 4
  %tmp_15 = load <2 x i32> addrspace(1)** %tmp_3, align 4
  %tmp_16 = getelementptr inbounds <2 x i32> addrspace(1)* %tmp_15, i32 %tmp_14
  store <2 x i32> %tmp_13, <2 x i32> addrspace(1)* %tmp_16, align 8
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<2 x i32> addrspace(1)*, <2 x i32> addrspace(1)*, <2 x i32> addrspace(1)*)* @operator_remainder_uint2uint2}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
