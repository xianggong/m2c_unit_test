// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_char8char8(__global char8 *src_0, __global char8 *src_1)
{
	uchar8 val = abs_diff(src_0[0], src_1[0]);
}

