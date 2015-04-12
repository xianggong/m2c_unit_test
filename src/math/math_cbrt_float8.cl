// Auto gen by math_func_gen.py

__kernel void math_cbrt_float8(__global float8 *src_0, __global float8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = cbrt(src_0[gid]);
}

