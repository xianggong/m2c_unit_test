// Auto gen by math_func_gen.py

__kernel void math_native_log10_float8(__global float8 *src_0)
{
	float8 val = native_log10(src_0[0]);
}

