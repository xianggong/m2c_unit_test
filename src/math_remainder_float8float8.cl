// Auto gen by math_func_gen.py

__kernel void math_remainder_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	float8 val = remainder(src_0[0], src_1[0]);
}

