// Auto gen by relational_func_gen.py

__kernel void relational_isordered_float2float2(__global float2 *src_0, __global float2 *src_1, __global int2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isordered(src_0[gid], src_1[gid]);
}

