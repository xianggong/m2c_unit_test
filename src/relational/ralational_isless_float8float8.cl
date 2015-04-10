// Auto gen by ralational_func_gen.py

__kernel void ralational_isless_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	int8 val = isless(src_0[0], src_1[0]);
}

