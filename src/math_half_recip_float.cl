// Auto gen by math_func_gen.py

__kernel void math_half_recip_float(__global float *src_0)
{
	float val = half_recip(src_0[0]);
}

