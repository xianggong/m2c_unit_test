// Auto gen by integer_func_gen.py

__kernel void integer_clz_uchar4uchar4(__global uchar4 *src_0, __global uchar4 *src_1)
{
	uchar4 val = clz(src_0[0], src_1[0]);
}

