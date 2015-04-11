// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_ushort2ushort2ushort2(__global ushort2 *src_0, __global ushort2 *src_1, __global ushort2 *src_2, __global ushort2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_sat(src_0[0], src_1[0], src_2[0]);
}

