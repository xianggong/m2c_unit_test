// Auto gen by math_func_gen.py

__kernel void math_ldexp_float2(__global float2 *src_0)
{
	float2 val = ldexp(src_0[0]);
}

