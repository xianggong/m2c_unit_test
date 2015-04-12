// Auto gen by relational_func_gen.py

__kernel void relational_signbit_float2(__global float2 *src_0, __global int2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = signbit(src_0[gid]);
}

