// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_char8char8(__global char8 *src_0, __global char8 *src_1)
{
	char8 val = mul_hi(src_0[0], src_1[0]);
}

