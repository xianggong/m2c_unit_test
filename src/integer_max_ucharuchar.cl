// Auto gen by integer_func_gen.py

__kernel void integer_max_ucharuchar(__global uchar *src_0, __global uchar *src_1)
{
	uchar val = max(src_0[0], src_1[0]);
}

