// Auto gen by arithmetic_operator_gen.py

__kernel void operator_divide_short4short4(__global short4 *src_0, __global short4 *src_1, __global float4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float4)(src_0[gid] / src_1[gid]);
}

