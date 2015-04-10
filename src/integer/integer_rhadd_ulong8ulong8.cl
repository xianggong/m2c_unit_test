// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_ulong8ulong8(__global ulong8 *src_0, __global ulong8 *src_1)
{
	ulong8 val = rhadd(src_0[0], src_1[0]);
}

