// Auto gen by math_func_gen.py

__kernel void math_rootn_float4int4(__global float4 *src_0, __global int4 *src_1, __global float4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rootn(src_0[0], src_1[0]);
}

