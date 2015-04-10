// Auto gen by integer_func_gen.py

__kernel void integer_min_uint4uint4(__global uint4 *src_0, __global uint4 *src_1)
{
	uint4 val = min(src_0[0], src_1[0]);
}

