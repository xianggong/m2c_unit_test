// Auto gen by common_func_gen.py

__kernel void common_degrees_float(__global float *src_0, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = degrees(src_0[gid]);
}

