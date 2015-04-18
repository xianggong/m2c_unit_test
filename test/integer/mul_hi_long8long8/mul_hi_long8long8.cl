// Auto generated kernel

__kernel void mul_hi_long8long8(__global long8 *src_0, __global long8 *src_1, __global long8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = mul_hi(src_0[gid], src_1[gid]);
}
