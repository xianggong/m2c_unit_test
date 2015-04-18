// Auto generated kernel

__kernel void post_increment_short4(__global short4 *src_0, __global short4* dst)
{
	int gid = get_global_id(0);
	dst[gid] =  src_0[gid] ++;
}
