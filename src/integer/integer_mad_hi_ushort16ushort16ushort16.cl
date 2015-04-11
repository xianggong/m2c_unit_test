// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_ushort16ushort16ushort16(__global ushort16 *src_0, __global ushort16 *src_1, __global ushort16 *src_2, __global ushort16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_hi(src_0[0], src_1[0], src_2[0]);
}
