// Auto gen by common_func_gen.py

__kernel void common_step_float4float4(__global float4 *src_0, __global float4 *src_1)
{
	float4 val = step(src_0[0], src_1[0]);
}

