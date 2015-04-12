// Auto gen by arithmetic_operator_gen.py

__kernel void operator_post_increment_long(__global long *src_0, __global long *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] ++);
}

