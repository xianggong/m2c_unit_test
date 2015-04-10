// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ulong2ulong2(__global ulong2 *src_0, __global ulong2 *src_1)
{
	ulong2 val = abs_diff(src_0[0], src_1[0]);
}

