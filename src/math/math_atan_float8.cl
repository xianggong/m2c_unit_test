// Auto gen by math_func_gen.py

__kernel void math_atan_float8(__global float8 *src_0)
{
	float8 val = atan(src_0[0]);
}

