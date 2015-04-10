// Auto gen by math_func_gen.py

__kernel void math_rsqrt_float4(__global float4 *src_0)
{
	float4 val = rsqrt(src_0[0]);
}

