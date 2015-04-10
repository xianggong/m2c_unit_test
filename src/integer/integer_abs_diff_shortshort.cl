// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_shortshort(__global short *src_0, __global short *src_1)
{
	ushort val = abs_diff(src_0[0], src_1[0]);
}

