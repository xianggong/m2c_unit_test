// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_ushortushort(__global ushort *src_0, __global ushort *src_1)
{
	ushort val = mul_hi(src_0[0], src_1[0]);
}

