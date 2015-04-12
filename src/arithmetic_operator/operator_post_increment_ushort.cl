// Auto gen by arithmetic_operator_gen.py

__kernel void operator_post_increment_ushort(__global ushort *src_0, __global ushort *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] ++);
}

