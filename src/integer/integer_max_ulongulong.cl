// Auto gen by integer_func_gen.py

__kernel void integer_max_ulongulong(__global ulong *src_0, __global ulong *src_1)
{
	ulong val = max(src_0[0], src_1[0]);
}

