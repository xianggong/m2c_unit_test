// Auto gen by math_func_gen.py

__kernel void math_lgamma_float8(__global float8 *src_0)
{
	float8 val = lgamma(src_0[0]);
}

