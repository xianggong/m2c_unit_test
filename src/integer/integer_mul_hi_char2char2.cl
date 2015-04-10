// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_char2char2(__global char2 *src_0, __global char2 *src_1)
{
	char2 val = mul_hi(src_0[0], src_1[0]);
}

