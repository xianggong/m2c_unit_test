// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_uint16uint16uint16(__global uint16 *src_0, __global uint16 *src_1, __global uint16 *src_2)
{
	uint16 val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

