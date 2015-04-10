// Auto gen by math_func_gen.py

__kernel void math_half_rsqrt_float(__global float *src_0)
{
	float val = half_rsqrt(src_0[0]);
}

