// Auto gen by math_func_gen.py

__kernel void math_rsqrt_float(__global float *src_0, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rsqrt(src_0[0]);
}

