// Auto generated kernel

__kernel void abs_ushort4(__global ushort4 *src_0, __global ushort4* dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}