// Auto gen by integer_func_gen.py

__kernel void integer_hadd_uint8uint8(__global uint8 *src_0, __global uint8 *src_1)
{
	uint8 val = hadd(src_0[0], src_1[0]);
}

