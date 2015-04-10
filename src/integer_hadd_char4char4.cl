// Auto gen by integer_func_gen.py

__kernel void integer_hadd_char4char4(__global char4 *src_0, __global char4 *src_1)
{
	char4 val = hadd(src_0[0], src_1[0]);
}

