// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ushort2ushort2(__global ushort2 *src_0, __global ushort2 *src_1, __global ushort2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[0], src_1[0]);
}
