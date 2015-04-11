// Auto gen by common_func_gen.py

__kernel void common_clamp_float8float8float8(__global float8 *src_0, __global float8 *src_1, __global float8 *src_2, __global float8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clamp(src_0[0], src_1[0], src_2[0]);
}

