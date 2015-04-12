// Auto gen by common_func_gen.py

__kernel void common_clamp_float16float16float16(__global float16 *src_0, __global float16 *src_1, __global float16 *src_2, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clamp(src_0[gid], src_1[gid], src_2[gid]);
}

