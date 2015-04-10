// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uchar2uchar2uchar2(__global uchar2 *src_0, __global uchar2 *src_1, __global uchar2 *src_2)
{
	uchar2 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

