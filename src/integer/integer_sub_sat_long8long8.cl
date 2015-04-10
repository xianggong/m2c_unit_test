// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_long8long8(__global long8 *src_0, __global long8 *src_1)
{
	long8 val = sub_sat(src_0[0], src_1[0]);
}

