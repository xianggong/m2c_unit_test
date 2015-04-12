// Auto gen by arithmetic_operator_gen.py

__kernel void operator_muliply_uchar8uchar8(__global uchar8 *src_0, __global uchar8 *src_1, __global uchar8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] * src_1[gid]);
}

