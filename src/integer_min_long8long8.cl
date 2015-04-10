// Auto gen by integer_func_gen.py

__kernel void integer_min_long8long8(__global long8 *src_0, __global long8 *src_1)
{
	long8 val = min(src_0[0], src_1[0]);
}

