// Auto gen by math_func_gen.py

__kernel void math_native_log2_float16(__global float16 *src_0)
{
	float16 val = native_log2(src_0[0]);
}

