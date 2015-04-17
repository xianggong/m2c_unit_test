// Auto generated kernel

__kernel void not_equal_uint4uint4(__global uint4 *src_0, __global uint4 *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] != src_1[gid]);
}
