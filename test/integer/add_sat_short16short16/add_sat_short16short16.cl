// Auto generated kernel

__kernel void add_sat_short16short16(__global short16 *src_0, __global short16 *src_1, __global short16* dst)
{
	int gid = get_global_id(0);
	dst[gid] = add_sat(src_0[gid], src_1[gid]);
}
