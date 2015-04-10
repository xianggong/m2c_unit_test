// Auto gen by integer_func_gen.py

__kernel void integer_rotate_charchar(__global char *src_0, __global char *src_1)
{
	char val = rotate(src_0[0], src_1[0]);
}

