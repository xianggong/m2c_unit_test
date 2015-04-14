// Auto gen by arithmetic_operator_gen.py

__kernel void operator_remainder_longlong(__global long *src_0, __global long *src_1, __global long *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] % src_1[gid]);
}
