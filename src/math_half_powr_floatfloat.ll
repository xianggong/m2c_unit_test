; ModuleID = 'math_half_powr_floatfloat.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_half_powr_floatfloat(float addrspace(1)* %src_0, float addrspace(1)* %src_1) #0 {
  %tmp_1 = alloca float addrspace(1)*, align 4
  %tmp_2 = alloca float addrspace(1)*, align 4
  %val = alloca float, align 4
  store float addrspace(1)* %src_0, float addrspace(1)** %tmp_1, align 4
  store float addrspace(1)* %src_1, float addrspace(1)** %tmp_2, align 4
  %tmp_3 = load float addrspace(1)** %tmp_1, align 4
  %tmp_4 = getelementptr inbounds float addrspace(1)* %tmp_3, i32 0
  %tmp_5 = load float addrspace(1)* %tmp_4, align 4
  %tmp_6 = fpext float %tmp_5 to double
  %tmp_7 = load float addrspace(1)** %tmp_2, align 4
  %tmp_8 = getelementptr inbounds float addrspace(1)* %tmp_7, i32 0
  %tmp_9 = load float addrspace(1)* %tmp_8, align 4
  %tmp_10 = fpext float %tmp_9 to double
  %tmp_11 = call i32 bitcast (i32 (...)* @half_powr to i32 (double, double)*)(double %tmp_6, double %tmp_10)
  %tmp_12 = sitofp i32 %tmp_11 to float
  store float %tmp_12, float* %val, align 4
  ret void
}

declare i32 @half_powr(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (float addrspace(1)*, float addrspace(1)*)* @math_half_powr_floatfloat}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
