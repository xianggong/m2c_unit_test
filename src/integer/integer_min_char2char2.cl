// Auto gen by integer_func_gen.py

__kernel void integer_min_char2char2(__global char2 *src_0, __global char2 *src_1)
{
	char2 val = min(src_0[0], src_1[0]);
}

