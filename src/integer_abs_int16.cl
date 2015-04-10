// Auto gen by integer_func_gen.py

__kernel void integer_abs_int16(__global int16 *src_0)
{
	uint16 val = abs(src_0[0]);
}

