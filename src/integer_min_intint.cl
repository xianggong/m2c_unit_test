// Auto gen by integer_func_gen.py

__kernel void integer_min_intint(__global int *src_0, __global int *src_1)
{
	int val = min(src_0[0], src_1[0]);
}

