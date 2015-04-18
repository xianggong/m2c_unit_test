// Auto generated kernel

__kernel void relational_greater_than_long8long8(__global long8 *src_0, __global long8 *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] > src_1[gid]);
}
