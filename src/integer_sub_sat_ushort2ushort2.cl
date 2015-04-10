// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_ushort2ushort2(__global ushort2 *src_0, __global ushort2 *src_1)
{
	ushort2 val = sub_sat(src_0[0], src_1[0]);
}

