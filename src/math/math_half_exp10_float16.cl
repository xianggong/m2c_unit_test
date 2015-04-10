// Auto gen by math_func_gen.py

__kernel void math_half_exp10_float16(__global float16 *src_0)
{
	float16 val = half_exp10(src_0[0]);
}

