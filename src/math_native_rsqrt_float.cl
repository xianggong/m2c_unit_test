// Auto gen by math_func_gen.py

__kernel void math_native_rsqrt_float(__global float *src_0)
{
	float val = native_rsqrt(src_0[0]);
}

