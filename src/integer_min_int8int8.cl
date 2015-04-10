// Auto gen by integer_func_gen.py

__kernel void integer_min_int8int8(__global int8 *src_0, __global int8 *src_1)
{
	int8 val = min(src_0[0], src_1[0]);
}

