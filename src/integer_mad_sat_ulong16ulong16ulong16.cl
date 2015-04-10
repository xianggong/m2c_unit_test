// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_ulong16ulong16ulong16(__global ulong16 *src_0, __global ulong16 *src_1, __global ulong16 *src_2)
{
	ulong16 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

