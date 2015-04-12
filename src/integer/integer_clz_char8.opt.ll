; ModuleID = 'integer_clz_char8.opt.bc'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_clz_char8(<8 x i8> addrspace(1)* %src_0, <8 x i8> addrspace(1)* %dst) #0 {
  %tmp_3 = call i32 @__get_global_id_u32(i32 0)
  %tmp_6 = getelementptr inbounds <8 x i8> addrspace(1)* %src_0, i32 %tmp_3
  %tmp_7 = load <8 x i8> addrspace(1)* %tmp_6, align 8
  %tmp_8 = call <8 x i8> @_Z3clzDv8_c(<8 x i8> %tmp_7)
  %tmp_11 = getelementptr inbounds <8 x i8> addrspace(1)* %dst, i32 %tmp_3
  store <8 x i8> %tmp_8, <8 x i8> addrspace(1)* %tmp_11, align 8
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare <8 x i8> @_Z3clzDv8_c(<8 x i8>) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<8 x i8> addrspace(1)*, <8 x i8> addrspace(1)*)* @integer_clz_char8}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
