// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_int8int8int8(__global int8 *src_0, __global int8 *src_1, __global int8 *src_2)
{
	int8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

