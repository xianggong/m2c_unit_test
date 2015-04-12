; ModuleID = 'integer_mad_hi_ulongulongulong.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @integer_mad_hi_ulongulongulong(i64 addrspace(1)* %src_0, i64 addrspace(1)* %src_1, i64 addrspace(1)* %src_2, i64 addrspace(1)* %dst) #0 {
  %tmp_1 = alloca i64 addrspace(1)*, align 4
  %tmp_2 = alloca i64 addrspace(1)*, align 4
  %tmp_3 = alloca i64 addrspace(1)*, align 4
  %tmp_4 = alloca i64 addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store i64 addrspace(1)* %src_0, i64 addrspace(1)** %tmp_1, align 4
  store i64 addrspace(1)* %src_1, i64 addrspace(1)** %tmp_2, align 4
  store i64 addrspace(1)* %src_2, i64 addrspace(1)** %tmp_3, align 4
  store i64 addrspace(1)* %dst, i64 addrspace(1)** %tmp_4, align 4
  %tmp_5 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_5, i32* %gid, align 4
  %tmp_6 = load i32* %gid, align 4
  %tmp_7 = load i64 addrspace(1)** %tmp_1, align 4
  %tmp_8 = getelementptr inbounds i64 addrspace(1)* %tmp_7, i32 %tmp_6
  %tmp_9 = load i64 addrspace(1)* %tmp_8, align 8
  %tmp_10 = load i32* %gid, align 4
  %tmp_11 = load i64 addrspace(1)** %tmp_2, align 4
  %tmp_12 = getelementptr inbounds i64 addrspace(1)* %tmp_11, i32 %tmp_10
  %tmp_13 = load i64 addrspace(1)* %tmp_12, align 8
  %tmp_14 = call i64 @_Z6mul_himm(i64 %tmp_9, i64 %tmp_13)
  %tmp_15 = load i32* %gid, align 4
  %tmp_16 = load i64 addrspace(1)** %tmp_3, align 4
  %tmp_17 = getelementptr inbounds i64 addrspace(1)* %tmp_16, i32 %tmp_15
  %tmp_18 = load i64 addrspace(1)* %tmp_17, align 8
  %tmp_19 = add i64 %tmp_14, %tmp_18
  %tmp_20 = load i32* %gid, align 4
  %tmp_21 = load i64 addrspace(1)** %tmp_4, align 4
  %tmp_22 = getelementptr inbounds i64 addrspace(1)* %tmp_21, i32 %tmp_20
  store i64 %tmp_19, i64 addrspace(1)* %tmp_22, align 8
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare i64 @_Z6mul_himm(i64, i64) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (i64 addrspace(1)*, i64 addrspace(1)*, i64 addrspace(1)*, i64 addrspace(1)*)* @integer_mad_hi_ulongulongulong}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
