// Auto gen by integer_func_gen.py

__kernel void integer_hadd_ulongulong(__global ulong *src_0, __global ulong *src_1)
{
	ulong val = hadd(src_0[0], src_1[0]);
}

