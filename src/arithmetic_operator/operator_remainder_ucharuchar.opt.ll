; ModuleID = 'operator_remainder_ucharuchar.opt.bc'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @operator_remainder_ucharuchar(i8 addrspace(1)* %src_0, i8 addrspace(1)* %src_1, i8 addrspace(1)* %dst) #0 {
entry:
  %tmp_4 = call i32 @__get_global_id_u32(i32 0)
  %tmp_7 = getelementptr inbounds i8 addrspace(1)* %src_0, i32 %tmp_4
  %tmp_8 = load i8 addrspace(1)* %tmp_7, align 1
  %tmp_9 = zext i8 %tmp_8 to i32
  %tmp_12 = getelementptr inbounds i8 addrspace(1)* %src_1, i32 %tmp_4
  %tmp_13 = load i8 addrspace(1)* %tmp_12, align 1
  %tmp_14 = zext i8 %tmp_13 to i32
  %tmp_15 = srem i32 %tmp_9, %tmp_14
  %tmp_16 = trunc i32 %tmp_15 to i8
  %tmp_19 = getelementptr inbounds i8 addrspace(1)* %dst, i32 %tmp_4
  store i8 %tmp_16, i8 addrspace(1)* %tmp_19, align 1
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)* @operator_remainder_ucharuchar}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
