// Auto gen by relational_func_gen.py

__kernel void relational_isinf_float4(__global float4 *src_0, __global int4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isinf(src_0[0]);
}
