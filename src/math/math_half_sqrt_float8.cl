// Auto gen by math_func_gen.py

__kernel void math_half_sqrt_float8(__global float8 *src_0)
{
	float8 val = half_sqrt(src_0[0]);
}

