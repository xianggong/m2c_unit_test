// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_int8int8(__global int8 *src_0, __global int8 *src_1)
{
	int8 val = mul_hi(src_0[0], src_1[0]);
}

