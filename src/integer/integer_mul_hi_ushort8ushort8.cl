// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_ushort8ushort8(__global ushort8 *src_0, __global ushort8 *src_1)
{
	ushort8 val = mul_hi(src_0[0], src_1[0]);
}

