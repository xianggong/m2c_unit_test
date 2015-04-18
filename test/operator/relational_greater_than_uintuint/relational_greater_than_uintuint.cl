// Auto generated kernel

__kernel void relational_greater_than_uintuint(__global uint *src_0, __global uint *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] > src_1[gid]);
}
