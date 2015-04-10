// Auto gen by integer_func_gen.py

__kernel void integer_hadd_ushort4ushort4(__global ushort4 *src_0, __global ushort4 *src_1)
{
	ushort4 val = hadd(src_0[0], src_1[0]);
}

