// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_long16long16long16(__global long16 *src_0, __global long16 *src_1, __global long16 *src_2)
{
	long16 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

