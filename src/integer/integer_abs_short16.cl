// Auto gen by integer_func_gen.py

__kernel void integer_abs_short16(__global short16 *src_0)
{
	ushort16 val = abs(src_0[0]);
}

