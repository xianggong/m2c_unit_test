// Auto gen by math_func_gen.py

__kernel void math_native_divide_float2(__global float2 *src_0, __global float2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = native_divide(src_0[0]);
}

