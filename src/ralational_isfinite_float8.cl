// Auto gen by ralational_func_gen.py

__kernel void ralational_isfinite_float8(__global float8 *src_0)
{
	int8 val = isfinite(src_0[0]);
}

