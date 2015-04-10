// Auto gen by math_func_gen.py

__kernel void math_native_log10_float4(__global float4 *src_0)
{
	float4 val = native_log10(src_0[0]);
}

