// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uchar8uchar8uchar8(__global uchar8 *src_0, __global uchar8 *src_1, __global uchar8 *src_2)
{
	uchar8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

