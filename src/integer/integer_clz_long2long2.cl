// Auto gen by integer_func_gen.py

__kernel void integer_clz_long2long2(__global long2 *src_0, __global long2 *src_1)
{
	long2 val = clz(src_0[0], src_1[0]);
}

