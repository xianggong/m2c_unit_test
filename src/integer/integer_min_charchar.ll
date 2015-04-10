; ModuleID = 'integer_min_charchar.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_min_charchar(i8 addrspace(1)* %src_0, i8 addrspace(1)* %src_1) #0 {
  %tmp_1 = alloca i8 addrspace(1)*, align 4
  %tmp_2 = alloca i8 addrspace(1)*, align 4
  %val = alloca i8, align 1
  store i8 addrspace(1)* %src_0, i8 addrspace(1)** %tmp_1, align 4
  store i8 addrspace(1)* %src_1, i8 addrspace(1)** %tmp_2, align 4
  %tmp_3 = load i8 addrspace(1)** %tmp_1, align 4
  %tmp_4 = getelementptr inbounds i8 addrspace(1)* %tmp_3, i32 0
  %tmp_5 = load i8 addrspace(1)* %tmp_4, align 1
  %tmp_6 = load i8 addrspace(1)** %tmp_2, align 4
  %tmp_7 = getelementptr inbounds i8 addrspace(1)* %tmp_6, i32 0
  %tmp_8 = load i8 addrspace(1)* %tmp_7, align 1
  %tmp_9 = call signext i8 @_Z3mincc(i8 signext %tmp_5, i8 signext %tmp_8)
  store i8 %tmp_9, i8* %val, align 1
  ret void
}

declare signext i8 @_Z3mincc(i8 signext, i8 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (i8 addrspace(1)*, i8 addrspace(1)*)* @integer_min_charchar}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
