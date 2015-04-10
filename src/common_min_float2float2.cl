// Auto gen by common_func_gen.py

__kernel void common_min_float2float2(__global float2 *src_0, __global float2 *src_1)
{
	float2 val = min(src_0[0], src_1[0]);
}

