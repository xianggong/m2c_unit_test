// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_ushort4ushort4(__global ushort4 *src_0, __global ushort4 *src_1)
{
	ushort4 val = abs_sat(src_0[0], src_1[0]);
}

