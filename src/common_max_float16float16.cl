// Auto gen by common_func_gen.py

__kernel void common_max_float16float16(__global float16 *src_0, __global float16 *src_1)
{
	float16 val = max(src_0[0], src_1[0]);
}

