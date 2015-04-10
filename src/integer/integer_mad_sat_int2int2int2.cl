// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_int2int2int2(__global int2 *src_0, __global int2 *src_1, __global int2 *src_2)
{
	int2 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

