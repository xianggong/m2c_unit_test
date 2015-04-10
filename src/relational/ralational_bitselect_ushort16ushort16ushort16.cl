// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ushort16ushort16ushort16(__global ushort16 *src_0, __global ushort16 *src_1, __global ushort16 *src_2)
{
	ushort16 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

