// Auto gen by math_func_gen.py

__kernel void math_trunc_float8(__global float8 *src_0)
{
	float8 val = trunc(src_0[0]);
}

