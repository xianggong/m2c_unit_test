// Auto gen by math_func_gen.py

__kernel void math_rootn_float16int16(__global float16 *src_0, __global int16 *src_1)
{
	int16 val = rootn(src_0[0], src_1[0]);
}

