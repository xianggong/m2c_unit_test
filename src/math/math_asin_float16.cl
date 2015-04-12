// Auto gen by math_func_gen.py

__kernel void math_asin_float16(__global float16 *src_0, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = asin(src_0[gid]);
}

