// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_uint16uint16(__global uint16 *src_0, __global uint16 *src_1)
{
	uint16 val = mul_hi(src_0[0], src_1[0]);
}

