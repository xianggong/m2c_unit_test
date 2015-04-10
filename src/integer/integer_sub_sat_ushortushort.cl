// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_ushortushort(__global ushort *src_0, __global ushort *src_1)
{
	ushort val = sub_sat(src_0[0], src_1[0]);
}

