// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_char8char8(__global char8 *src_0, __global char8 *src_1)
{
	char8 val = abs_sat(src_0[0], src_1[0]);
}

