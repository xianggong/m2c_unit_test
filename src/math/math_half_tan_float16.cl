// Auto gen by math_func_gen.py

__kernel void math_half_tan_float16(__global float16 *src_0, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = half_tan(src_0[0]);
}

