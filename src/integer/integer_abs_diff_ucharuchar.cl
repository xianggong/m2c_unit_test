// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ucharuchar(__global uchar *src_0, __global uchar *src_1, __global uchar *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[gid], src_1[gid]);
}

