// Auto gen by math_func_gen.py

__kernel void math_atan2_float16float16(__global float16 *src_0, __global float16 *src_1, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = atan2(src_0[0], src_1[0]);
}

