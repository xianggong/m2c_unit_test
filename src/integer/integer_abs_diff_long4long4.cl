// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_long4long4(__global long4 *src_0, __global long4 *src_1)
{
	ulong4 val = abs_diff(src_0[0], src_1[0]);
}

