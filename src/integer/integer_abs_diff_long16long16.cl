// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_long16long16(__global long16 *src_0, __global long16 *src_1, __global ulong16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[0], src_1[0]);
}

