// Auto generated kernel

__kernel void mad_sat_ulong16ulong16ulong16(__global ulong16 *src_0, __global ulong16 *src_1, __global ulong16 *src_2, __global ulong16* dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_sat(src_0[gid], src_1[gid], src_2[gid]);
}
