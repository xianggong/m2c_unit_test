// Auto gen by math_func_gen.py

__kernel void math_native_sqrt_float16(__global float16 *src_0)
{
	float16 val = native_sqrt(src_0[0]);
}

