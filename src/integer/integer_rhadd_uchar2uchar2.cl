// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_uchar2uchar2(__global uchar2 *src_0, __global uchar2 *src_1)
{
	uchar2 val = rhadd(src_0[0], src_1[0]);
}

