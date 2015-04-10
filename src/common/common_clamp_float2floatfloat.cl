// Auto gen by common_func_gen.py

__kernel void common_clamp_float2floatfloat(__global float2 *src_0, __global float *src_1, __global float *src_2)
{
	float val = clamp(src_0[0], src_1[0], src_2[0]);
}

