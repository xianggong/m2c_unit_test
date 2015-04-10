// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_short8short8(__global short8 *src_0, __global short8 *src_1)
{
	ushort8 val = abs_diff(src_0[0], src_1[0]);
}

