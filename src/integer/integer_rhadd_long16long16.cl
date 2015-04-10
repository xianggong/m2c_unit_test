// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_long16long16(__global long16 *src_0, __global long16 *src_1)
{
	long16 val = rhadd(src_0[0], src_1[0]);
}

