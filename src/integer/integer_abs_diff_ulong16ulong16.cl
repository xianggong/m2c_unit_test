// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ulong16ulong16(__global ulong16 *src_0, __global ulong16 *src_1)
{
	ulong16 val = abs_diff(src_0[0], src_1[0]);
}

