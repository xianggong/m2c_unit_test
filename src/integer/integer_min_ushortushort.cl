// Auto gen by integer_func_gen.py

__kernel void integer_min_ushortushort(__global ushort *src_0, __global ushort *src_1)
{
	ushort val = min(src_0[0], src_1[0]);
}

