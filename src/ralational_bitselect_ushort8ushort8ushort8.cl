// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ushort8ushort8ushort8(__global ushort8 *src_0, __global ushort8 *src_1, __global ushort8 *src_2)
{
	ushort8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

