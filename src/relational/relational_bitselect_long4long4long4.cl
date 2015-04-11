// Auto gen by relational_func_gen.py

__kernel void relational_bitselect_long4long4long4(__global long4 *src_0, __global long4 *src_1, __global long4 *src_2, __global long4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[0], src_1[0], src_2[0]);
}

