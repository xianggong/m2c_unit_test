// Auto gen by math_func_gen.py

__kernel void math_log1p_float16(__global float16 *src_0)
{
	float16 val = log1p(src_0[0]);
}

