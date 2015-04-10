// Auto gen by math_func_gen.py

__kernel void math_half_exp10_float2(__global float2 *src_0)
{
	float2 val = half_exp10(src_0[0]);
}

