// Auto generated kernel

__kernel void native_recip_float(__global float *src_0, __global float* dst)
{
	int gid = get_global_id(0);
	dst[gid] = native_recip(src_0[gid]);
}
