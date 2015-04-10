// Auto gen by math_func_gen.py

__kernel void math_native_exp_float4(__global float4 *src_0)
{
	float4 val = native_exp(src_0[0]);
}

