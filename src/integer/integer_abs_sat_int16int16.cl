// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_int16int16(__global int16 *src_0, __global int16 *src_1)
{
	int16 val = abs_sat(src_0[0], src_1[0]);
}

