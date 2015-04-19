// Auto generated kernel

__kernel void min_uint16uint16(__global uint16 *src_0, __global uint16 *src_1, __global uint16* dst)
{
	int gid = get_global_id(0);
	dst[gid] = min(src_0[gid], src_1[gid]);
}