// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_uintuint(__global uint *src_0, __global uint *src_1)
{
	uint val = abs_sat(src_0[0], src_1[0]);
}

