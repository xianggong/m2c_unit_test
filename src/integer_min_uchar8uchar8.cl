// Auto gen by integer_func_gen.py

__kernel void integer_min_uchar8uchar8(__global uchar8 *src_0, __global uchar8 *src_1)
{
	uchar8 val = min(src_0[0], src_1[0]);
}

