// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_ushort16ushort16ushort16(__global ushort16 *src_0, __global ushort16 *src_1, __global ushort16 *src_2)
{
	ushort16 val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

