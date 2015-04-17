// Auto generated kernel

__kernel void relational_greater_than_charchar(__global char *src_0, __global char *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] > src_1[gid]);
}
