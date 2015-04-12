// Auto gen by arithmetic_operator_gen.py

__kernel void operator_divide_longlong(__global long *src_0, __global long *src_1, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float)(src_0[gid] / src_1[gid]);
}

