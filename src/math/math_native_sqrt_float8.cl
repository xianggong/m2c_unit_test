// Auto gen by math_func_gen.py

__kernel void math_native_sqrt_float8(__global float8 *src_0)
{
	float8 val = native_sqrt(src_0[0]);
}

