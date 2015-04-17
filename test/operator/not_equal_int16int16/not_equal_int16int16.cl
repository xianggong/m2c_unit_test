// Auto generated kernel

__kernel void not_equal_int16int16(__global int16 *src_0, __global int16 *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] != src_1[gid]);
}
