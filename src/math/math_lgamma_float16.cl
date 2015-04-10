// Auto gen by math_func_gen.py

__kernel void math_lgamma_float16(__global float16 *src_0)
{
	float16 val = lgamma(src_0[0]);
}

