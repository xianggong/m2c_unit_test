// Auto gen by integer_func_gen.py

__kernel void integer_min_int4int4(__global int4 *src_0, __global int4 *src_1)
{
	int4 val = min(src_0[0], src_1[0]);
}

