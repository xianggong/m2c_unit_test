// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_int8int8(__global int8 *src_0, __global int8 *src_1)
{
	uint8 val = abs_diff(src_0[0], src_1[0]);
}

