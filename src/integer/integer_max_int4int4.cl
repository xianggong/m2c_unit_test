// Auto gen by integer_func_gen.py

__kernel void integer_max_int4int4(__global int4 *src_0, __global int4 *src_1)
{
	int4 val = max(src_0[0], src_1[0]);
}

