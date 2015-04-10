// Auto gen by math_func_gen.py

__kernel void math_cbrt_float16(__global float16 *src_0)
{
	float16 val = cbrt(src_0[0]);
}

