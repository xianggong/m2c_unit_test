// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_short2short2(__global short2 *src_0, __global short2 *src_1)
{
	short2 val = abs_sat(src_0[0], src_1[0]);
}

