; ModuleID = 'math_half_divide_float2float2.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_half_divide_float2float2(<2 x float> addrspace(1)* %src_0, <2 x float> addrspace(1)* %src_1) #0 {
  %tmp_1 = alloca <2 x float> addrspace(1)*, align 4
  %tmp_2 = alloca <2 x float> addrspace(1)*, align 4
  %val = alloca <2 x float>, align 8
  store <2 x float> addrspace(1)* %src_0, <2 x float> addrspace(1)** %tmp_1, align 4
  store <2 x float> addrspace(1)* %src_1, <2 x float> addrspace(1)** %tmp_2, align 4
  %tmp_3 = load <2 x float> addrspace(1)** %tmp_1, align 4
  %tmp_4 = getelementptr inbounds <2 x float> addrspace(1)* %tmp_3, i32 0
  %tmp_5 = load <2 x float> addrspace(1)* %tmp_4, align 8
  %tmp_6 = load <2 x float> addrspace(1)** %tmp_2, align 4
  %tmp_7 = getelementptr inbounds <2 x float> addrspace(1)* %tmp_6, i32 0
  %tmp_8 = load <2 x float> addrspace(1)* %tmp_7, align 8
  %tmp_9 = call i32 bitcast (i32 (...)* @half_divide to i32 (<2 x float>, <2 x float>)*)(<2 x float> %tmp_5, <2 x float> %tmp_8)
  %tmp_10 = sitofp i32 %tmp_9 to float
  %tmp_11 = insertelement <2 x float> undef, float %tmp_10, i32 0
  %tmp_12 = shufflevector <2 x float> %tmp_11, <2 x float> undef, <2 x i32> zeroinitializer
  store <2 x float> %tmp_12, <2 x float>* %val, align 8
  ret void
}

declare i32 @half_divide(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<2 x float> addrspace(1)*, <2 x float> addrspace(1)*)* @math_half_divide_float2float2}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
