// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_ulong8ulong8ulong8(__global ulong8 *src_0, __global ulong8 *src_1, __global ulong8 *src_2)
{
	ulong8 val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

