// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_longlong(__global long *src_0, __global long *src_1)
{
	ulong val = abs_diff(src_0[0], src_1[0]);
}

