// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_long4long4(__global long4 *src_0, __global long4 *src_1)
{
	long4 val = abs_sat(src_0[0], src_1[0]);
}

