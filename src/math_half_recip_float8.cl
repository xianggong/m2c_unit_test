// Auto gen by math_func_gen.py

__kernel void math_half_recip_float8(__global float8 *src_0)
{
	float8 val = half_recip(src_0[0]);
}

