// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_ulong2ulong2(__global ulong2 *src_0, __global ulong2 *src_1)
{
	ulong2 val = rhadd(src_0[0], src_1[0]);
}

