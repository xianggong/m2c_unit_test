// Auto gen by integer_func_gen.py

__kernel void integer_max_ulong16ulong16(__global ulong16 *src_0, __global ulong16 *src_1)
{
	ulong16 val = max(src_0[0], src_1[0]);
}

