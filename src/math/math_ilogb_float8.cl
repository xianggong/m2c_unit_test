// Auto gen by math_func_gen.py

__kernel void math_ilogb_float8(__global float8 *src_0)
{
	float8 val = ilogb(src_0[0]);
}

