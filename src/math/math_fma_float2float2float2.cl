// Auto gen by math_func_gen.py

__kernel void math_fma_float2float2float2(__global float2 *src_0, __global float2 *src_1, __global float2 *src_2)
{
	float2 val = fma(src_0[0], src_1[0], src_2[0]);
}

