// Auto gen by math_func_gen.py

__kernel void math_pown_float8int8(__global float8 *src_0, __global int8 *src_1)
{
	int8 val = pown(src_0[0], src_1[0]);
}

