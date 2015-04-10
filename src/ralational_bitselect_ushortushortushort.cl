// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ushortushortushort(__global ushort *src_0, __global ushort *src_1, __global ushort *src_2)
{
	ushort val = bitselect(src_0[0], src_1[0], src_2[0]);
}

