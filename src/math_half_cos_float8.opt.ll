; ModuleID = 'math_half_cos_float8.opt.bc'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_half_cos_float8(<8 x float> addrspace(1)* %src_0) #0 {
  %tmp_3 = getelementptr inbounds <8 x float> addrspace(1)* %src_0, i32 0
  %tmp_4 = load <8 x float> addrspace(1)* %tmp_3, align 32
  %tmp_5 = call i32 bitcast (i32 (...)* @half_cos to i32 (<8 x float>)*)(<8 x float> %tmp_4)
  %tmp_6 = sitofp i32 %tmp_5 to float
  %tmp_7 = insertelement <8 x float> undef, float %tmp_6, i32 0
  %tmp_8 = shufflevector <8 x float> %tmp_7, <8 x float> undef, <8 x i32> zeroinitializer
  ret void
}

declare i32 @half_cos(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<8 x float> addrspace(1)*)* @math_half_cos_float8}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
