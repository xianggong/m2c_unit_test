// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_charchar(__global char *src_0, __global char *src_1)
{
	char val = rhadd(src_0[0], src_1[0]);
}

