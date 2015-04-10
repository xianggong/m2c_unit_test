// Auto gen by math_func_gen.py

__kernel void math_half_powr_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	float8 val = half_powr(src_0[0], src_1[0]);
}

