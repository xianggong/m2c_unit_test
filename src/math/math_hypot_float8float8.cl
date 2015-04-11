// Auto gen by math_func_gen.py

__kernel void math_hypot_float8float8(__global float8 *src_0, __global float8 *src_1, __global float8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = hypot(src_0[0], src_1[0]);
}
