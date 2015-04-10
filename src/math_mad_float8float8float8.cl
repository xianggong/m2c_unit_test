// Auto gen by math_func_gen.py

__kernel void math_mad_float8float8float8(__global float8 *src_0, __global float8 *src_1, __global float8 *src_2)
{
	float8 val = mad(src_0[0], src_1[0], src_2[0]);
}

