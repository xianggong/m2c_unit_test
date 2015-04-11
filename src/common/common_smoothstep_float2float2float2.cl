// Auto gen by common_func_gen.py

__kernel void common_smoothstep_float2float2float2(__global float2 *src_0, __global float2 *src_1, __global float2 *src_2, __global float2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = smoothstep(src_0[0], src_1[0], src_2[0]);
}
