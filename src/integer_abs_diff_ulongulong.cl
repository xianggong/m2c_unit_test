// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ulongulong(__global ulong *src_0, __global ulong *src_1)
{
	ulong val = abs_diff(src_0[0], src_1[0]);
}

