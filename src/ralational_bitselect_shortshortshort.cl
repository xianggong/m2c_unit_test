// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_shortshortshort(__global short *src_0, __global short *src_1, __global short *src_2)
{
	short val = bitselect(src_0[0], src_1[0], src_2[0]);
}

