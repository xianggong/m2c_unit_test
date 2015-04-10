// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_uint2uint2uint2(__global uint2 *src_0, __global uint2 *src_1, __global uint2 *src_2)
{
	uint2 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

