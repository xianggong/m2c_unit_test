// Auto gen by ralational_func_gen.py

__kernel void ralational_isnan_float4(__global float4 *src_0)
{
	int4 val = isnan(src_0[0]);
}

