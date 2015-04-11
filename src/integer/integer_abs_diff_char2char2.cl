// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_char2char2(__global char2 *src_0, __global char2 *src_1, __global uchar2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[0], src_1[0]);
}

