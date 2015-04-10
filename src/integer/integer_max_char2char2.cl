// Auto gen by integer_func_gen.py

__kernel void integer_max_char2char2(__global char2 *src_0, __global char2 *src_1)
{
	char2 val = max(src_0[0], src_1[0]);
}

