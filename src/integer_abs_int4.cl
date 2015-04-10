// Auto gen by integer_func_gen.py

__kernel void integer_abs_int4(__global int4 *src_0)
{
	uint4 val = abs(src_0[0]);
}

