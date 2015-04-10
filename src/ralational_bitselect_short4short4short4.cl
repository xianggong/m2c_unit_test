// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_short4short4short4(__global short4 *src_0, __global short4 *src_1, __global short4 *src_2)
{
	short4 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

