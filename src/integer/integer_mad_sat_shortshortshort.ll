; ModuleID = 'integer_mad_sat_shortshortshort.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_mad_sat_shortshortshort(i16 addrspace(1)* %src_0, i16 addrspace(1)* %src_1, i16 addrspace(1)* %src_2, i16 addrspace(1)* %dst) #0 {
entry:
  %tmp_1 = alloca i16 addrspace(1)*, align 4
  %tmp_2 = alloca i16 addrspace(1)*, align 4
  %tmp_3 = alloca i16 addrspace(1)*, align 4
  %tmp_4 = alloca i16 addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store i16 addrspace(1)* %src_0, i16 addrspace(1)** %tmp_1, align 4
  store i16 addrspace(1)* %src_1, i16 addrspace(1)** %tmp_2, align 4
  store i16 addrspace(1)* %src_2, i16 addrspace(1)** %tmp_3, align 4
  store i16 addrspace(1)* %dst, i16 addrspace(1)** %tmp_4, align 4
  %tmp_5 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_5, i32* %gid, align 4
  %tmp_6 = load i32* %gid, align 4
  %tmp_7 = load i16 addrspace(1)** %tmp_1, align 4
  %tmp_8 = getelementptr inbounds i16 addrspace(1)* %tmp_7, i32 %tmp_6
  %tmp_9 = load i16 addrspace(1)* %tmp_8, align 2
  %tmp_10 = load i32* %gid, align 4
  %tmp_11 = load i16 addrspace(1)** %tmp_2, align 4
  %tmp_12 = getelementptr inbounds i16 addrspace(1)* %tmp_11, i32 %tmp_10
  %tmp_13 = load i16 addrspace(1)* %tmp_12, align 2
  %tmp_14 = load i32* %gid, align 4
  %tmp_15 = load i16 addrspace(1)** %tmp_3, align 4
  %tmp_16 = getelementptr inbounds i16 addrspace(1)* %tmp_15, i32 %tmp_14
  %tmp_17 = load i16 addrspace(1)* %tmp_16, align 2
  %tmp_18 = call signext i16 @_Z7mad_satsss(i16 signext %tmp_9, i16 signext %tmp_13, i16 signext %tmp_17)
  %tmp_19 = load i32* %gid, align 4
  %tmp_20 = load i16 addrspace(1)** %tmp_4, align 4
  %tmp_21 = getelementptr inbounds i16 addrspace(1)* %tmp_20, i32 %tmp_19
  store i16 %tmp_18, i16 addrspace(1)* %tmp_21, align 2
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare signext i16 @_Z7mad_satsss(i16 signext, i16 signext, i16 signext) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (i16 addrspace(1)*, i16 addrspace(1)*, i16 addrspace(1)*, i16 addrspace(1)*)* @integer_mad_sat_shortshortshort}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
