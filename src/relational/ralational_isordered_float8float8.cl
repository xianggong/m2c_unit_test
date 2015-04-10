// Auto gen by ralational_func_gen.py

__kernel void ralational_isordered_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	int8 val = isordered(src_0[0], src_1[0]);
}

