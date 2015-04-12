// Auto gen by common_func_gen.py

__kernel void common_sign_float2(__global float2 *src_0, __global float2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = sign(src_0[gid]);
}

