; ModuleID = 'integer_min_char16char16.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_min_char16char16(<16 x i8> addrspace(1)* %src_0, <16 x i8> addrspace(1)* %src_1) #0 {
  %tmp_1 = alloca <16 x i8> addrspace(1)*, align 4
  %tmp_2 = alloca <16 x i8> addrspace(1)*, align 4
  %val = alloca <16 x i8>, align 16
  store <16 x i8> addrspace(1)* %src_0, <16 x i8> addrspace(1)** %tmp_1, align 4
  store <16 x i8> addrspace(1)* %src_1, <16 x i8> addrspace(1)** %tmp_2, align 4
  %tmp_3 = load <16 x i8> addrspace(1)** %tmp_1, align 4
  %tmp_4 = getelementptr inbounds <16 x i8> addrspace(1)* %tmp_3, i32 0
  %tmp_5 = load <16 x i8> addrspace(1)* %tmp_4, align 16
  %tmp_6 = load <16 x i8> addrspace(1)** %tmp_2, align 4
  %tmp_7 = getelementptr inbounds <16 x i8> addrspace(1)* %tmp_6, i32 0
  %tmp_8 = load <16 x i8> addrspace(1)* %tmp_7, align 16
  %tmp_9 = call <16 x i8> @_Z3minDv16_cS_(<16 x i8> %tmp_5, <16 x i8> %tmp_8)
  store <16 x i8> %tmp_9, <16 x i8>* %val, align 16
  ret void
}

declare <16 x i8> @_Z3minDv16_cS_(<16 x i8>, <16 x i8>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<16 x i8> addrspace(1)*, <16 x i8> addrspace(1)*)* @integer_min_char16char16}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
