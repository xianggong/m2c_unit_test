// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_long4long4(__global long4 *src_0, __global long4 *src_1)
{
	long4 val = mul_hi(src_0[0], src_1[0]);
}

