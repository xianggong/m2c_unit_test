// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_ushort4ushort4(__global ushort4 *src_0, __global ushort4 *src_1)
{
	ushort4 val = sub_sat(src_0[0], src_1[0]);
}

