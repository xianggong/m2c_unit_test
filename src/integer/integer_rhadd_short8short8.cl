// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_short8short8(__global short8 *src_0, __global short8 *src_1)
{
	short8 val = rhadd(src_0[0], src_1[0]);
}

