// Auto generated kernel

__kernel void unary_plus_uchar4(__global uchar4 *src_0, __global uchar4* dst)
{
	int gid = get_global_id(0);
	dst[gid] = + src_0[gid] ;
}
