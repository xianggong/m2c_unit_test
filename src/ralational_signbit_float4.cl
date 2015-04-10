// Auto gen by ralational_func_gen.py

__kernel void ralational_signbit_float4(__global float4 *src_0)
{
	int4 val = signbit(src_0[0]);
}

