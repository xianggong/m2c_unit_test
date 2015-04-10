// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_charcharchar(__global char *src_0, __global char *src_1, __global char *src_2)
{
	char val = bitselect(src_0[0], src_1[0], src_2[0]);
}

