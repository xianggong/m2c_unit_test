// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_ushort8ushort8ushort8(__global ushort8 *src_0, __global ushort8 *src_1, __global ushort8 *src_2)
{
	ushort8 val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

