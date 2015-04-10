// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_short4short4(__global short4 *src_0, __global short4 *src_1)
{
	short4 val = abs_sat(src_0[0], src_1[0]);
}

