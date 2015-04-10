// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_long4long4long4(__global long4 *src_0, __global long4 *src_1, __global long4 *src_2)
{
	long4 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

