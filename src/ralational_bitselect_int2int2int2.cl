// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_int2int2int2(__global int2 *src_0, __global int2 *src_1, __global int2 *src_2)
{
	int2 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

