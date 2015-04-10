// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_uint16uint16(__global uint16 *src_0, __global uint16 *src_1)
{
	uint16 val = abs_sat(src_0[0], src_1[0]);
}

