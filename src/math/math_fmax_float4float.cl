// Auto gen by math_func_gen.py

__kernel void math_fmax_float4float(__global float4 *src_0, __global float *src_1, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = fmax(src_0[0], src_1[0]);
}

