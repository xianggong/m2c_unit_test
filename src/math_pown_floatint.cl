// Auto gen by math_func_gen.py

__kernel void math_pown_floatint(__global float *src_0, __global int *src_1)
{
	int val = pown(src_0[0], src_1[0]);
}

