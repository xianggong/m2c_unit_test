// Auto gen by ralational_func_gen.py

__kernel void ralational_islessequal_float4float4(__global float4 *src_0, __global float4 *src_1)
{
	int4 val = islessequal(src_0[0], src_1[0]);
}

