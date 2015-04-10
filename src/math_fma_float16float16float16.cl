// Auto gen by math_func_gen.py

__kernel void math_fma_float16float16float16(__global float16 *src_0, __global float16 *src_1, __global float16 *src_2)
{
	float16 val = fma(src_0[0], src_1[0], src_2[0]);
}

