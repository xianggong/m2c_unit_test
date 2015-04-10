// Auto gen by ralational_func_gen.py

__kernel void ralational_isfinite_float2(__global float2 *src_0)
{
	int2 val = isfinite(src_0[0]);
}

