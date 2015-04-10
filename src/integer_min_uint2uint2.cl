// Auto gen by integer_func_gen.py

__kernel void integer_min_uint2uint2(__global uint2 *src_0, __global uint2 *src_1)
{
	uint2 val = min(src_0[0], src_1[0]);
}

