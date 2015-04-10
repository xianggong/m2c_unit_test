// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_char16char16char16(__global char16 *src_0, __global char16 *src_1, __global char16 *src_2)
{
	char16 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

