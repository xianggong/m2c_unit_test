// Auto gen by common_func_gen.py

__kernel void common_min_floatfloat(__global float *src_0, __global float *src_1)
{
	float val = min(src_0[0], src_1[0]);
}

