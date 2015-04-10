// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_uint8uint8(__global uint8 *src_0, __global uint8 *src_1)
{
	uint8 val = abs_sat(src_0[0], src_1[0]);
}

