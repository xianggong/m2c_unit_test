// Auto generated kernel

__kernel void divide_int8int8(__global int8 *src_0, __global int8 *src_1, __global float8* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float8)( src_0[gid] / src_1[gid]);
}
