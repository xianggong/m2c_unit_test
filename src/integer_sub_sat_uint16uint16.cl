// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_uint16uint16(__global uint16 *src_0, __global uint16 *src_1)
{
	uint16 val = sub_sat(src_0[0], src_1[0]);
}

