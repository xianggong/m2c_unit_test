// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_ucharucharuchar(__global uchar *src_0, __global uchar *src_1, __global uchar *src_2)
{
	uchar val = mad_sat(src_0[0], src_1[0], src_2[0]);
}

