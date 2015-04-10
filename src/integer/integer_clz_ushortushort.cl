// Auto gen by integer_func_gen.py

__kernel void integer_clz_ushortushort(__global ushort *src_0, __global ushort *src_1)
{
	ushort val = clz(src_0[0], src_1[0]);
}

