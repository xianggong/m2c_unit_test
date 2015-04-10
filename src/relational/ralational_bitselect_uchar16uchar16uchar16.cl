// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uchar16uchar16uchar16(__global uchar16 *src_0, __global uchar16 *src_1, __global uchar16 *src_2)
{
	uchar16 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

