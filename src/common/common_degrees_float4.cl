// Auto gen by common_func_gen.py

__kernel void common_degrees_float4(__global float4 *src_0, __global float4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = degrees(src_0[0]);
}

