// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_shortshortshort(__global short *src_0, __global short *src_1, __global short *src_2)
{
	short val = mad_hi(src_0[0], src_1[0], src_2[0]);
}

