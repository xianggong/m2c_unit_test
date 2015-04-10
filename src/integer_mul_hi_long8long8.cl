// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_long8long8(__global long8 *src_0, __global long8 *src_1)
{
	long8 val = mul_hi(src_0[0], src_1[0]);
}

