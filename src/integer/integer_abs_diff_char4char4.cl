// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_char4char4(__global char4 *src_0, __global char4 *src_1)
{
	uchar4 val = abs_diff(src_0[0], src_1[0]);
}

