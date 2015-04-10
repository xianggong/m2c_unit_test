// Auto gen by integer_func_gen.py

__kernel void integer_clz_ulong2ulong2(__global ulong2 *src_0, __global ulong2 *src_1)
{
	ulong2 val = clz(src_0[0], src_1[0]);
}

