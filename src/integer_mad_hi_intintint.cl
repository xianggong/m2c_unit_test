// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_intintint(__global int *src_0, __global int *src_1, __global int *src_2)
{
	int val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

