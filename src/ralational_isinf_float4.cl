// Auto gen by ralational_func_gen.py

__kernel void ralational_isinf_float4(__global float4 *src_0)
{
	int4 val = isinf(src_0[0]);
}

