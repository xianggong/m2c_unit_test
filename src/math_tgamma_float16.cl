// Auto gen by math_func_gen.py

__kernel void math_tgamma_float16(__global float16 *src_0)
{
	float16 val = tgamma(src_0[0]);
}

