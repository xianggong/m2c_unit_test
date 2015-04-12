// Auto gen by relational_func_gen.py

__kernel void relational_isnotequal_float4float4(__global float4 *src_0, __global float4 *src_1, __global int4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isnotequal(src_0[gid], src_1[gid]);
}

