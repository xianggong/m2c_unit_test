// Auto generated kernel

__kernel void equal_uint2uint2(__global uint2 *src_0, __global uint2 *src_1, __global int2* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (int2)( src_0[gid] == src_1[gid]);
}
