// Auto gen by integer_func_gen.py

__kernel void integer_max_ushort2ushort2(__global ushort2 *src_0, __global ushort2 *src_1, __global ushort2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = max(src_0[gid], src_1[gid]);
}

