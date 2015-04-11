// Auto gen by relational_func_gen.py

__kernel void relational_isinf_float2(__global float2 *src_0, __global int2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isinf(src_0[0]);
}

