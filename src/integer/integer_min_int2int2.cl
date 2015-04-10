// Auto gen by integer_func_gen.py

__kernel void integer_min_int2int2(__global int2 *src_0, __global int2 *src_1)
{
	int2 val = min(src_0[0], src_1[0]);
}

