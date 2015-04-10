// Auto gen by integer_func_gen.py

__kernel void integer_rotate_long8long8(__global long8 *src_0, __global long8 *src_1)
{
	long8 val = rotate(src_0[0], src_1[0]);
}

