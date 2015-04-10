// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_int4int4(__global int4 *src_0, __global int4 *src_1)
{
	uint4 val = abs_diff(src_0[0], src_1[0]);
}

