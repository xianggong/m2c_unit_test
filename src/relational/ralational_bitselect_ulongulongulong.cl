// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ulongulongulong(__global ulong *src_0, __global ulong *src_1, __global ulong *src_2)
{
	ulong val = bitselect(src_0[0], src_1[0], src_2[0]);
}

