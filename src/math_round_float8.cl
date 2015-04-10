// Auto gen by math_func_gen.py

__kernel void math_round_float8(__global float8 *src_0)
{
	float8 val = round(src_0[0]);
}

