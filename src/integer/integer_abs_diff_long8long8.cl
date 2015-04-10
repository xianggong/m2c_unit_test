// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_long8long8(__global long8 *src_0, __global long8 *src_1)
{
	ulong8 val = abs_diff(src_0[0], src_1[0]);
}

