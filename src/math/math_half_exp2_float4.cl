// Auto gen by math_func_gen.py

__kernel void math_half_exp2_float4(__global float4 *src_0)
{
	float4 val = half_exp2(src_0[0]);
}

