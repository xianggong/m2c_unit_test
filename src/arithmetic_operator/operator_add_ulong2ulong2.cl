// Auto gen by arithmetic_operator_gen.py

__kernel void operator_add_ulong2ulong2(__global ulong2 *src_0, __global ulong2 *src_1, __global ulong2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] + src_1[gid]);
}

