// Auto gen by integer_func_gen.py

__kernel void integer_hadd_uint2uint2(__global uint2 *src_0, __global uint2 *src_1)
{
	uint2 val = hadd(src_0[0], src_1[0]);
}

