// Auto gen by math_func_gen.py

__kernel void math_atanh_float16(__global float16 *src_0)
{
	float16 val = atanh(src_0[0]);
}

