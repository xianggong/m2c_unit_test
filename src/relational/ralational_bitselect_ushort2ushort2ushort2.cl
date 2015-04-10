// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ushort2ushort2ushort2(__global ushort2 *src_0, __global ushort2 *src_1, __global ushort2 *src_2)
{
	ushort2 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

