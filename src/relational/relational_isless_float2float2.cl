// Auto gen by relational_func_gen.py

__kernel void relational_isless_float2float2(__global float2 *src_0, __global float2 *src_1, __global int2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isless(src_0[0], src_1[0]);
}

