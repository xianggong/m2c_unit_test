// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_ucharucharuchar(__global uchar *src_0, __global uchar *src_1, __global uchar *src_2)
{
	uchar val = bitselect(src_0[0], src_1[0], src_2[0]);
}

