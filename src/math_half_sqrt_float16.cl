// Auto gen by math_func_gen.py

__kernel void math_half_sqrt_float16(__global float16 *src_0)
{
	float16 val = half_sqrt(src_0[0]);
}

