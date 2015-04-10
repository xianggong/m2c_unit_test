// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ulong16ulong16ulong16(__global ulong16 *src_0, __global ulong16 *src_1, __global ulong16 *src_2)
{
	ulong16 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

