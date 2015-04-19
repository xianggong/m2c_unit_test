// Auto generated kernel

__kernel void abs_diff_long8long8(__global long8 *src_0, __global long8 *src_1, __global ulong8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (ulong8)(abs_diff(src_0[gid], src_1[gid]));
}