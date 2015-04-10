// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_ushort16ushort16(__global ushort16 *src_0, __global ushort16 *src_1)
{
	ushort16 val = sub_sat(src_0[0], src_1[0]);
}

