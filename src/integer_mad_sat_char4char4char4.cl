// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_char4char4char4(__global char4 *src_0, __global char4 *src_1, __global char4 *src_2)
{
	char4 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

