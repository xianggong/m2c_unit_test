// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uintuintuint(__global uint *src_0, __global uint *src_1, __global uint *src_2)
{
	uint val = bitselect(src_0[0], src_1[0], src_2[0]);
}

