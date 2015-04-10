// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_char8char8char8(__global char8 *src_0, __global char8 *src_1, __global char8 *src_2)
{
	char8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

