// Auto gen by common_func_gen.py

__kernel void common_radians_float8(__global float8 *src_0, __global float8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = radians(src_0[0]);
}

