// Auto generated kernel

__kernel void sub_sat_long8long8(__global long8 *src_0, __global long8 *src_1, __global long8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = sub_sat(src_0[gid], src_1[gid]);
}
