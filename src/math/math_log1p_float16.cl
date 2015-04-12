// Auto gen by math_func_gen.py

__kernel void math_log1p_float16(__global float16 *src_0, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = log1p(src_0[gid]);
}

