// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ulong8ulong8ulong8(__global ulong8 *src_0, __global ulong8 *src_1, __global ulong8 *src_2)
{
	ulong8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

