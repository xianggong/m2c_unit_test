// Auto generated kernel

__kernel void bitselect_uchar2uchar2uchar2(__global uchar2 *src_0, __global uchar2 *src_1, __global uchar2 *src_2, __global uchar2* dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[gid], src_1[gid], src_2[gid]);
}
