// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ushortushort(__global ushort *src_0, __global ushort *src_1, __global ushort *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[gid], src_1[gid]);
}

