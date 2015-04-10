// Auto gen by math_func_gen.py

__kernel void math_native_powr_float16(__global float16 *src_0)
{
	float16 val = native_powr(src_0[0]);
}

