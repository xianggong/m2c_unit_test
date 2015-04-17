// Auto generated kernel

__kernel void relational_less_than_or_equal_to_uchar2uchar2(__global uchar2 *src_0, __global uchar2 *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (uchar)( src_0[gid] <= src_1[gid]);
}
