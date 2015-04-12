// Auto gen by math_func_gen.py

__kernel void math_ilogb_float4(__global float4 *src_0, __global float4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = ilogb(src_0[gid]);
}

