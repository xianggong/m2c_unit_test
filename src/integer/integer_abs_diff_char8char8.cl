// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_char8char8(__global char8 *src_0, __global char8 *src_1, __global uchar8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[gid], src_1[gid]);
}

