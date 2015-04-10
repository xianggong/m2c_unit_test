// Auto gen by ralational_func_gen.py

__kernel void ralational_isunordered_float16float16(__global float16 *src_0, __global float16 *src_1)
{
	int16 val = isunordered(src_0[0], src_1[0]);
}

