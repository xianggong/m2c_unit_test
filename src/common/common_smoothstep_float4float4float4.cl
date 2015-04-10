// Auto gen by common_func_gen.py

__kernel void common_smoothstep_float4float4float4(__global float4 *src_0, __global float4 *src_1, __global float4 *src_2)
{
	float4 val = smoothstep(src_0[0], src_1[0], src_2[0]);
}

