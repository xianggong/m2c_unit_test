// Auto gen by integer_func_gen.py

__kernel void integer_hadd_charchar(__global char *src_0, __global char *src_1)
{
	char val = hadd(src_0[0], src_1[0]);
}

