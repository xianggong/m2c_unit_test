// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_ushort4ushort4ushort4(__global ushort4 *src_0, __global ushort4 *src_1, __global ushort4 *src_2)
{
	ushort4 val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

