// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_uchar8uchar8(__global uchar8 *src_0, __global uchar8 *src_1)
{
	uchar8 val = rhadd(src_0[0], src_1[0]);
}

