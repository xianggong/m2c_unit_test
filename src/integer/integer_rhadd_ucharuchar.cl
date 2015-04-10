// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_ucharuchar(__global uchar *src_0, __global uchar *src_1)
{
	uchar val = rhadd(src_0[0], src_1[0]);
}

