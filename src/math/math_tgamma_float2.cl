// Auto gen by math_func_gen.py

__kernel void math_tgamma_float2(__global float2 *src_0)
{
	float2 val = tgamma(src_0[0]);
}

