// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_int16int16int16(__global int16 *src_0, __global int16 *src_1, __global int16 *src_2)
{
	int16 val = bitselect(src_0[0], src_1[0], src_2[0]);
}

