// Auto gen by ralational_func_gen.py

__kernel void ralational_isnormal_float4(__global float4 *src_0)
{
	int4 val = isnormal(src_0[0]);
}

