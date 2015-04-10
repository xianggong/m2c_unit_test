// Auto gen by ralational_func_gen.py

__kernel void ralational_isnan_float8(__global float8 *src_0)
{
	int8 val = isnan(src_0[0]);
}

