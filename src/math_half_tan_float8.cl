// Auto gen by math_func_gen.py

__kernel void math_half_tan_float8(__global float8 *src_0)
{
	float8 val = half_tan(src_0[0]);
}

