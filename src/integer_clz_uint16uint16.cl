// Auto gen by integer_func_gen.py

__kernel void integer_clz_uint16uint16(__global uint16 *src_0, __global uint16 *src_1)
{
	uint16 val = clz(src_0[0], src_1[0]);
}

