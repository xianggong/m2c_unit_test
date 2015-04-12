// Auto gen by common_func_gen.py

__kernel void common_max_float4float4(__global float4 *src_0, __global float4 *src_1, __global float4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = max(src_0[gid], src_1[gid]);
}

