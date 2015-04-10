// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_short16short16short16(__global short16 *src_0, __global short16 *src_1, __global short16 *src_2)
{
	short16 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

