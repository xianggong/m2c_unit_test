// Auto gen by math_func_gen.py

__kernel void math_tanh_float2(__global float2 *src_0)
{
	float2 val = tanh(src_0[0]);
}

