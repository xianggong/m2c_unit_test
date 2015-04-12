// Auto gen by relational_func_gen.py

__kernel void relational_isunordered_float8float8(__global float8 *src_0, __global float8 *src_1, __global int8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isunordered(src_0[gid], src_1[gid]);
}

