// Auto gen by integer_func_gen.py

__kernel void integer_hadd_ushort8ushort8(__global ushort8 *src_0, __global ushort8 *src_1)
{
	ushort8 val = hadd(src_0[0], src_1[0]);
}

