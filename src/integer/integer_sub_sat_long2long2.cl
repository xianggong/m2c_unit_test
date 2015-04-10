// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_long2long2(__global long2 *src_0, __global long2 *src_1)
{
	long2 val = sub_sat(src_0[0], src_1[0]);
}

