// Auto gen by integer_func_gen.py

__kernel void integer_max_int2int2(__global int2 *src_0, __global int2 *src_1)
{
	int2 val = max(src_0[0], src_1[0]);
}

