// Auto gen by math_func_gen.py

__kernel void math_native_exp10_float(__global float *src_0)
{
	float val = native_exp10(src_0[0]);
}

