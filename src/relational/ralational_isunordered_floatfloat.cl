// Auto gen by ralational_func_gen.py

__kernel void ralational_isunordered_floatfloat(__global float *src_0, __global float *src_1)
{
	int val = isunordered(src_0[0], src_1[0]);
}

