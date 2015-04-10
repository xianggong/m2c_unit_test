// Auto gen by math_func_gen.py

__kernel void math_native_tan_float8(__global float8 *src_0)
{
	float8 val = native_tan(src_0[0]);
}

