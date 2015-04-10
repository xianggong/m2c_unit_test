// Auto gen by integer_func_gen.py

__kernel void integer_hadd_ushortushort(__global ushort *src_0, __global ushort *src_1)
{
	ushort val = hadd(src_0[0], src_1[0]);
}

