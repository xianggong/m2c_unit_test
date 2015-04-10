// Auto gen by integer_func_gen.py

__kernel void integer_hadd_intint(__global int *src_0, __global int *src_1)
{
	int val = hadd(src_0[0], src_1[0]);
}

