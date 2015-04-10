// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_ulong8ulong8(__global ulong8 *src_0, __global ulong8 *src_1)
{
	ulong8 val = abs_sat(src_0[0], src_1[0]);
}

