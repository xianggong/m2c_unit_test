// Auto gen by arithmetic_operator_gen.py

__kernel void operator_divide_char2char2(__global char2 *src_0, __global char2 *src_1, __global float2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float2)(src_0[gid] / src_1[gid]);
}
