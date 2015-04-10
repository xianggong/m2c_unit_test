// Auto gen by math_func_gen.py

__kernel void math_remainder_float4float4(__global float4 *src_0, __global float4 *src_1)
{
	float4 val = remainder(src_0[0], src_1[0]);
}

