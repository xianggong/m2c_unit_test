// Auto gen by relational_func_gen.py

__kernel void relational_bitselect_intintint(__global int *src_0, __global int *src_1, __global int *src_2, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[gid], src_1[gid], src_2[gid]);
}

