// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_uint4uint4uint4(__global uint4 *src_0, __global uint4 *src_1, __global uint4 *src_2)
{
	uint4 val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

