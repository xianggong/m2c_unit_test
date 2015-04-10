// Auto gen by ralational_func_gen.py

__kernel void ralational_isgreater_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	int8 val = isgreater(src_0[0], src_1[0]);
}

