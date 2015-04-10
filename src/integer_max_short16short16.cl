// Auto gen by integer_func_gen.py

__kernel void integer_max_short16short16(__global short16 *src_0, __global short16 *src_1)
{
	short16 val = max(src_0[0], src_1[0]);
}

