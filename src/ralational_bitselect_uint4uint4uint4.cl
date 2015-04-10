// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uint4uint4uint4(__global uint4 *src_0, __global uint4 *src_1, __global uint4 *src_2)
{
	uint4 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

