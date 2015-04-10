// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uchar4uchar4uchar4(__global uchar4 *src_0, __global uchar4 *src_1, __global uchar4 *src_2)
{
	uchar4 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

