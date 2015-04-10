// Auto gen by math_func_gen.py

__kernel void math_native_sin_float2(__global float2 *src_0)
{
	float2 val = native_sin(src_0[0]);
}

