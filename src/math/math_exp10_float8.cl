// Auto gen by math_func_gen.py

__kernel void math_exp10_float8(__global float8 *src_0)
{
	float8 val = exp10(src_0[0]);
}

