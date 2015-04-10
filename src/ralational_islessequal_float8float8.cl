// Auto gen by ralational_func_gen.py

__kernel void ralational_islessequal_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	int8 val = islessequal(src_0[0], src_1[0]);
}

