// Auto gen by math_func_gen.py

__kernel void math_erf_float8(__global float8 *src_0)
{
	float8 val = erf(src_0[0]);
}

