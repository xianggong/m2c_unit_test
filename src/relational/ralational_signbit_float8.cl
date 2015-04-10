// Auto gen by ralational_func_gen.py

__kernel void ralational_signbit_float8(__global float8 *src_0)
{
	int8 val = signbit(src_0[0]);
}

