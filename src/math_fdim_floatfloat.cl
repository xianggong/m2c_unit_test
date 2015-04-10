// Auto gen by math_func_gen.py

__kernel void math_fdim_floatfloat(__global float *src_0, __global float *src_1)
{
	float val = fdim(src_0[0], src_1[0]);
}

