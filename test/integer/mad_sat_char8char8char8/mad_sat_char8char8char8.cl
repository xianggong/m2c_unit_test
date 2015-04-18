// Auto generated kernel

__kernel void mad_sat_char8char8char8(__global char8 *src_0, __global char8 *src_1, __global char8 *src_2, __global char8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_sat(src_0[gid], src_1[gid], src_2[gid]);
}
