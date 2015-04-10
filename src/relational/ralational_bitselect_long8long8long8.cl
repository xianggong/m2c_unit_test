// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_long8long8long8(__global long8 *src_0, __global long8 *src_1, __global long8 *src_2)
{
	long8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

