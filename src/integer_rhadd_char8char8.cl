// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_char8char8(__global char8 *src_0, __global char8 *src_1)
{
	char8 val = rhadd(src_0[0], src_1[0]);
}

