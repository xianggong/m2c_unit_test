// Auto gen by integer_func_gen.py

__kernel void integer_clz_ucharuchar(__global uchar *src_0, __global uchar *src_1)
{
	uchar val = clz(src_0[0], src_1[0]);
}

