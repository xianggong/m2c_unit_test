// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_int16int16(__global int16 *src_0, __global int16 *src_1)
{
	uint16 val = abs_diff(src_0[0], src_1[0]);
}

