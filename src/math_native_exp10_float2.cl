// Auto gen by math_func_gen.py

__kernel void math_native_exp10_float2(__global float2 *src_0)
{
	float2 val = native_exp10(src_0[0]);
}

