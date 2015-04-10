// Auto gen by math_func_gen.py

__kernel void math_acosh_float8(__global float8 *src_0)
{
	float8 val = acosh(src_0[0]);
}

