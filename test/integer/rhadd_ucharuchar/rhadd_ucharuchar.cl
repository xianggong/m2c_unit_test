// Auto generated kernel

__kernel void rhadd_ucharuchar(__global uchar *src_0, __global uchar *src_1, __global uchar* dst)
{
	int gid = get_global_id(0);
	dst[gid] = rhadd(src_0[gid], src_1[gid]);
}
