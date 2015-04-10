// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_uchar16uchar16(__global uchar16 *src_0, __global uchar16 *src_1)
{
	uchar16 val = abs_diff(src_0[0], src_1[0]);
}

