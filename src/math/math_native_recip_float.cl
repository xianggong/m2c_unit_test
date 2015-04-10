// Auto gen by math_func_gen.py

__kernel void math_native_recip_float(__global float *src_0)
{
	float val = native_recip(src_0[0]);
}

