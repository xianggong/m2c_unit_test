// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_short4short4(__global short4 *src_0, __global short4 *src_1)
{
	short4 val = sub_sat(src_0[0], src_1[0]);
}

