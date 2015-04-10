// Auto gen by integer_func_gen.py

__kernel void integer_abs_long8(__global long8 *src_0)
{
	ulong8 val = abs(src_0[0]);
}

