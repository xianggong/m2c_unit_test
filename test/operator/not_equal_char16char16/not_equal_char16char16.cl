// Auto generated kernel

__kernel void not_equal_char16char16(__global char16 *src_0, __global char16 *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] != src_1[gid]);
}