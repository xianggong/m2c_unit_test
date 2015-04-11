// Auto gen by common_func_gen.py

__kernel void common_min_float2float2(__global float2 *src_0, __global float2 *src_1, __global float2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = min(src_0[0], src_1[0]);
}

