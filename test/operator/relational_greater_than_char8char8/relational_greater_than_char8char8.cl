// Auto generated kernel

__kernel void relational_greater_than_char8char8(__global char8 *src_0, __global char8 *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] > src_1[gid]);
}