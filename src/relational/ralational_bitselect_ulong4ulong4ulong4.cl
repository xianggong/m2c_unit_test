// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ulong4ulong4ulong4(__global ulong4 *src_0, __global ulong4 *src_1, __global ulong4 *src_2)
{
	ulong4 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

