// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uint8uint8uint8(__global uint8 *src_0, __global uint8 *src_1, __global uint8 *src_2)
{
	uint8 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

