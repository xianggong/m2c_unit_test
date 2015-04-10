// Auto gen by math_func_gen.py

__kernel void math_atan2_floatfloat(__global float *src_0, __global float *src_1)
{
	float val = atan2(src_0[0], src_1[0]);
}

