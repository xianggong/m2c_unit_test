// Auto gen by integer_func_gen.py

__kernel void integer_rotate_uint2uint2(__global uint2 *src_0, __global uint2 *src_1)
{
	uint2 val = rotate(src_0[0], src_1[0]);
}

