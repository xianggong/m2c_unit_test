// Auto gen by math_func_gen.py

__kernel void math_fmax_float8float(__global float8 *src_0, __global float *src_1)
{
	float val = fmax(src_0[0], src_1[0]);
}

