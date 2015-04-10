// Auto gen by integer_func_gen.py

__kernel void integer_abs_short8(__global short8 *src_0)
{
	ushort8 val = abs(src_0[0]);
}

