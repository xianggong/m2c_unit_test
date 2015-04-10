// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_intintint(__global int *src_0, __global int *src_1, __global int *src_2)
{
	int val = bitselect(src_0[0], src_1[0], src_2[0]);
}

