// Auto gen by integer_func_gen.py

__kernel void integer_max_ushort16ushort16(__global ushort16 *src_0, __global ushort16 *src_1)
{
	ushort16 val = max(src_0[0], src_1[0]);
}

