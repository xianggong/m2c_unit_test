// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_int2int2(__global int2 *src_0, __global int2 *src_1)
{
	uint2 val = abs_diff(src_0[0], src_1[0]);
}

