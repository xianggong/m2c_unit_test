// Auto gen by relational_func_gen.py

__kernel void relational_isnormal_float4(__global float4 *src_0, __global int4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isnormal(src_0[0]);
}

