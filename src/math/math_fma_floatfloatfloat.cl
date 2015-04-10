// Auto gen by math_func_gen.py

__kernel void math_fma_floatfloatfloat(__global float *src_0, __global float *src_1, __global float *src_2)
{
	float val = fma(src_0[0], src_1[0], src_2[0]);
}

