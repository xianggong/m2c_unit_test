// Auto gen by relational_func_gen.py

__kernel void relational_signbit_float8(__global float8 *src_0, __global int8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = signbit(src_0[0]);
}

