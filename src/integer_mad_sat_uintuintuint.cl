// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_uintuintuint(__global uint *src_0, __global uint *src_1, __global uint *src_2)
{
	uint val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

