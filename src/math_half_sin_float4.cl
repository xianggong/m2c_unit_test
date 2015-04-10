// Auto gen by math_func_gen.py

__kernel void math_half_sin_float4(__global float4 *src_0)
{
	float4 val = half_sin(src_0[0]);
}

