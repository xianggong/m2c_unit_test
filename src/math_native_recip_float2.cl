// Auto gen by math_func_gen.py

__kernel void math_native_recip_float2(__global float2 *src_0)
{
	float2 val = native_recip(src_0[0]);
}

