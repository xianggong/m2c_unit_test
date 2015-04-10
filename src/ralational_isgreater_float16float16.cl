// Auto gen by ralational_func_gen.py

__kernel void ralational_isgreater_float16float16(__global float16 *src_0, __global float16 *src_1)
{
	int16 val = isgreater(src_0[0], src_1[0]);
}

