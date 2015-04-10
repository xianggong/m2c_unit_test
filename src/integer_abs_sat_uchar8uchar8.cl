// Auto gen by integer_func_gen.py

__kernel void integer_abs_sat_uchar8uchar8(__global uchar8 *src_0, __global uchar8 *src_1)
{
	uchar8 val = abs_sat(src_0[0], src_1[0]);
}

