// Auto gen by math_func_gen.py

__kernel void math_nan_uint(__global uint *src_0, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = nan(src_0[gid]);
}

