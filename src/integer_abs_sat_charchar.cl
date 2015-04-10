// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_charchar(__global char *src_0, __global char *src_1)
{
	char val = abs_sat(src_0[0], src_1[0]);
}

