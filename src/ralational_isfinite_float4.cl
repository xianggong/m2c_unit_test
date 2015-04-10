// Auto gen by ralational_func_gen.py

__kernel void ralational_isfinite_float4(__global float4 *src_0)
{
	int4 val = isfinite(src_0[0]);
}

