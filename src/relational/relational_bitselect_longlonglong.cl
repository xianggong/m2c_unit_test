// Auto gen by relational_func_gen.py

__kernel void relational_bitselect_longlonglong(__global long *src_0, __global long *src_1, __global long *src_2, __global long *dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[0], src_1[0], src_2[0]);
}

