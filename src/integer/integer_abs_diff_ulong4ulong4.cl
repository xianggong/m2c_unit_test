// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ulong4ulong4(__global ulong4 *src_0, __global ulong4 *src_1)
{
	ulong4 val = abs_diff(src_0[0], src_1[0]);
}

