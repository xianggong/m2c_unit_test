// Auto generated kernel

__kernel void abs_short8(__global short8 *src_0, __global ushort8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (ushort8)(abs(src_0[gid]));
}
