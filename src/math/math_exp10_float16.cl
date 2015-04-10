// Auto gen by math_func_gen.py

__kernel void math_exp10_float16(__global float16 *src_0)
{
	float16 val = exp10(src_0[0]);
}

