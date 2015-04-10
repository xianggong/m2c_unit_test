// Auto gen by integer_func_gen.py

__kernel void integer_hadd_shortshort(__global short *src_0, __global short *src_1)
{
	short val = hadd(src_0[0], src_1[0]);
}

