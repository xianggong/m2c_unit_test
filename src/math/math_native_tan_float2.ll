; ModuleID = 'math_native_tan_float2.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_native_tan_float2(<2 x float> addrspace(1)* %src_0, <2 x float> addrspace(1)* %dst) #0 {
  %tmp_1 = alloca <2 x float> addrspace(1)*, align 4
  %tmp_2 = alloca <2 x float> addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store <2 x float> addrspace(1)* %src_0, <2 x float> addrspace(1)** %tmp_1, align 4
  store <2 x float> addrspace(1)* %dst, <2 x float> addrspace(1)** %tmp_2, align 4
  %tmp_3 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_3, i32* %gid, align 4
  %tmp_4 = load <2 x float> addrspace(1)** %tmp_1, align 4
  %tmp_5 = getelementptr inbounds <2 x float> addrspace(1)* %tmp_4, i32 0
  %tmp_6 = load <2 x float> addrspace(1)* %tmp_5, align 8
  %tmp_7 = call i32 bitcast (i32 (...)* @native_tan to i32 (<2 x float>)*)(<2 x float> %tmp_6)
  %tmp_8 = sitofp i32 %tmp_7 to float
  %tmp_9 = insertelement <2 x float> undef, float %tmp_8, i32 0
  %tmp_10 = shufflevector <2 x float> %tmp_9, <2 x float> undef, <2 x i32> zeroinitializer
  %tmp_11 = load i32* %gid, align 4
  %tmp_12 = load <2 x float> addrspace(1)** %tmp_2, align 4
  %tmp_13 = getelementptr inbounds <2 x float> addrspace(1)* %tmp_12, i32 %tmp_11
  store <2 x float> %tmp_10, <2 x float> addrspace(1)* %tmp_13, align 8
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare i32 @native_tan(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @math_native_tan_float2}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
