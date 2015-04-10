// Auto gen by integer_func_gen.py

__kernel void integer_max_ulong8ulong8(__global ulong8 *src_0, __global ulong8 *src_1)
{
	ulong8 val = max(src_0[0], src_1[0]);
}

