// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_ushortushortushort(__global ushort *src_0, __global ushort *src_1, __global ushort *src_2, __global ushort *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_hi(src_0[gid], src_1[gid], src_2[gid]);
}

