// Auto gen by integer_func_gen.py

__kernel void integer_clz_ulong4ulong4(__global ulong4 *src_0, __global ulong4 *src_1)
{
	ulong4 val = clz(src_0[0], src_1[0]);
}

