// Auto generated kernel

__kernel void relational_less_than_ulongulong(__global ulong *src_0, __global ulong *src_1, __global int* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (int)( src_0[gid] < src_1[gid]);
}
