// Auto generated kernel

__kernel void pre_decrement_ushort8(__global ushort8 *src_0, __global ushort8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = -- src_0[gid] ;
}
