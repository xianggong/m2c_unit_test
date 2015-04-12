// Auto gen by arithmetic_operator_gen.py

__kernel void operator_divide_ushortushort(__global ushort *src_0, __global ushort *src_1, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float)(src_0[gid] / src_1[gid]);
}

