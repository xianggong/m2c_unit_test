// Auto generated kernel

__kernel void half_exp10_float2(__global float2 *src_0, __global float2* dst)
{
	int gid = get_global_id(0);
	dst[gid] = half_exp10(src_0[gid]);
}
