// Auto gen by arithmetic_operator_gen.py

__kernel void operator_divide_short16short16(__global short16 *src_0, __global short16 *src_1, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float16)(src_0[gid] / src_1[gid]);
}

