// Auto gen by relational_func_gen.py

__kernel void relational_isless_float4float4(__global float4 *src_0, __global float4 *src_1, __global int4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isless(src_0[0], src_1[0]);
}

