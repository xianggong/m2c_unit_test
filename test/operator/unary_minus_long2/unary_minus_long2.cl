// Auto generated kernel

__kernel void unary_minus_long2(__global long2 *src_0, __global long2* dst)
{
	int gid = get_global_id(0);
	dst[gid] = - src_0[gid] ;
}
