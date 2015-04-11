// Auto gen by relational_func_gen.py

__kernel void relational_bitselect_short4short4short4(__global short4 *src_0, __global short4 *src_1, __global short4 *src_2, __global short4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[0], src_1[0], src_2[0]);
}

