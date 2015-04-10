// Auto gen by math_func_gen.py

__kernel void math_rootn_floatint(__global float *src_0, __global int *src_1)
{
	int val = rootn(src_0[0], src_1[0]);
}

