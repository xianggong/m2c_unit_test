// Auto gen by arithmetic_operator_gen.py

__kernel void operator_post_increment_int(__global int *src_0, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] ++);
}

