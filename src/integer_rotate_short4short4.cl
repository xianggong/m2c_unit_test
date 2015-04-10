// Auto gen by integer_func_gen.py

__kernel void integer_rotate_short4short4(__global short4 *src_0, __global short4 *src_1)
{
	short4 val = rotate(src_0[0], src_1[0]);
}

