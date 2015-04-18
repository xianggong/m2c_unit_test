// Auto generated kernel

__kernel void divide_ushort16ushort16(__global ushort16 *src_0, __global ushort16 *src_1, __global float16* dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float16)( src_0[gid] / src_1[gid]);
}
