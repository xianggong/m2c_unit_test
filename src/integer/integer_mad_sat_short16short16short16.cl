// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_short16short16short16(__global short16 *src_0, __global short16 *src_1, __global short16 *src_2)
{
	short16 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

