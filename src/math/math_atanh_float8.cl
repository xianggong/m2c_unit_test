// Auto gen by math_func_gen.py

__kernel void math_atanh_float8(__global float8 *src_0, __global float8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = atanh(src_0[0]);
}

