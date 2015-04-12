// Auto gen by math_func_gen.py

__kernel void math_half_sqrt_float(__global float *src_0, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = half_sqrt(src_0[gid]);
}

