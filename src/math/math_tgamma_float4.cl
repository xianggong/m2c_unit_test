// Auto gen by math_func_gen.py

__kernel void math_tgamma_float4(__global float4 *src_0)
{
	float4 val = tgamma(src_0[0]);
}

