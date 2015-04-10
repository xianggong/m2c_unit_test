// Auto gen by integer_func_gen.py

__kernel void integer_max_uchar2uchar2(__global uchar2 *src_0, __global uchar2 *src_1)
{
	uchar2 val = max(src_0[0], src_1[0]);
}

