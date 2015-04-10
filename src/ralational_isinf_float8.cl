// Auto gen by ralational_func_gen.py

__kernel void ralational_isinf_float8(__global float8 *src_0)
{
	int8 val = isinf(src_0[0]);
}

