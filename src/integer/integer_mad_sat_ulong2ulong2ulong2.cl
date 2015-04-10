// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_ulong2ulong2ulong2(__global ulong2 *src_0, __global ulong2 *src_1, __global ulong2 *src_2)
{
	ulong2 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

