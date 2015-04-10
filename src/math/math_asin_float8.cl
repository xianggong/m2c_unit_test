// Auto gen by math_func_gen.py

__kernel void math_asin_float8(__global float8 *src_0)
{
	float8 val = asin(src_0[0]);
}

