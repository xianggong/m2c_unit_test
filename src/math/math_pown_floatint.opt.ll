; ModuleID = 'math_pown_floatint.opt.bc'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_pown_floatint(float addrspace(1)* %src_0, i32 addrspace(1)* %src_1, float addrspace(1)* %dst) #0 {
entry:
  %tmp_4 = call i32 @__get_global_id_u32(i32 0)
  %tmp_7 = getelementptr inbounds float addrspace(1)* %src_0, i32 %tmp_4
  %tmp_8 = load float addrspace(1)* %tmp_7, align 4
  %tmp_11 = getelementptr inbounds i32 addrspace(1)* %src_1, i32 %tmp_4
  %tmp_12 = load i32 addrspace(1)* %tmp_11, align 4
  %tmp_13 = call float @llvm.powi.f32(float %tmp_8, i32 %tmp_12)
  %tmp_16 = getelementptr inbounds float addrspace(1)* %dst, i32 %tmp_4
  store float %tmp_13, float addrspace(1)* %tmp_16, align 4
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

; Function Attrs: nounwind readonly
declare float @llvm.powi.f32(float, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (float addrspace(1)*, i32 addrspace(1)*, float addrspace(1)*)* @math_pown_floatint}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
