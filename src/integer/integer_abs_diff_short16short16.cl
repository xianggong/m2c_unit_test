// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_short16short16(__global short16 *src_0, __global short16 *src_1)
{
	ushort16 val = abs_diff(src_0[0], src_1[0]);
}

