// Auto gen by integer_func_gen.py

__kernel void integer_min_longlong(__global long *src_0, __global long *src_1)
{
	long val = min(src_0[0], src_1[0]);
}

