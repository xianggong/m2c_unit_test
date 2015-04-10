// Auto gen by math_func_gen.py

__kernel void math_atan_float16(__global float16 *src_0)
{
	float16 val = atan(src_0[0]);
}

