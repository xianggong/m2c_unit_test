// Auto generated kernel

__kernel void hadd_ulongulong(__global ulong *src_0, __global ulong *src_1, __global ulong* dst)
{
	int gid = get_global_id(0);
	dst[gid] = hadd(src_0[gid], src_1[gid]);
}
