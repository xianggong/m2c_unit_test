// Auto gen by math_func_gen.py

__kernel void math_fma_float4float4float4(__global float4 *src_0, __global float4 *src_1, __global float4 *src_2)
{
	float4 val = fma(src_0[0], src_1[0], src_2[0]);
}

