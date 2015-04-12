; ModuleID = 'math_asinpi_float4.cl'
target datalayout = "e-p:64:64:64-p3:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v48:64:64-v64:64:64-v96:128:128-v128:128:128-v192:256:256-v256:256:256-v512:512:512-v1024:1024:1024-v2048:2048:2048-n32:64"
target triple = "r600--"

; Function Attrs: nounwind
define void @math_asinpi_float4(<4 x float> addrspace(1)* %src_0, <4 x float> addrspace(1)* %dst) #0 {
  %tmp_1 = alloca <4 x float> addrspace(1)*, align 4
  %tmp_2 = alloca <4 x float> addrspace(1)*, align 4
  %gid = alloca i32, align 4
  store <4 x float> addrspace(1)* %src_0, <4 x float> addrspace(1)** %tmp_1, align 4
  store <4 x float> addrspace(1)* %dst, <4 x float> addrspace(1)** %tmp_2, align 4
  %tmp_3 = call i32 @__get_global_id_u32(i32 0)
  store i32 %tmp_3, i32* %gid, align 4
  %tmp_4 = load i32* %gid, align 4
  %tmp_5 = load <4 x float> addrspace(1)** %tmp_1, align 4
  %tmp_6 = getelementptr inbounds <4 x float> addrspace(1)* %tmp_5, i32 %tmp_4
  %tmp_7 = load <4 x float> addrspace(1)* %tmp_6, align 16
  %tmp_8 = call i32 bitcast (i32 (...)* @asinpi to i32 (<4 x float>)*)(<4 x float> %tmp_7)
  %tmp_9 = sitofp i32 %tmp_8 to float
  %tmp_10 = insertelement <4 x float> undef, float %tmp_9, i32 0
  %tmp_11 = shufflevector <4 x float> %tmp_10, <4 x float> undef, <4 x i32> zeroinitializer
  %tmp_12 = load i32* %gid, align 4
  %tmp_13 = load <4 x float> addrspace(1)** %tmp_2, align 4
  %tmp_14 = getelementptr inbounds <4 x float> addrspace(1)* %tmp_13, i32 %tmp_12
  store <4 x float> %tmp_11, <4 x float> addrspace(1)* %tmp_14, align 16
  ret void
}

declare i32 @__get_global_id_u32(i32) #1

declare i32 @asinpi(...) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!opencl.kernels = !{!0}
!llvm.ident = !{!1}

!0 = metadata !{void (<4 x float> addrspace(1)*, <4 x float> addrspace(1)*)* @math_asinpi_float4}
!1 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
