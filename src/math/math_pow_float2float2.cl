// Auto gen by math_func_gen.py

__kernel void math_pow_float2float2(__global float2 *src_0, __global float2 *src_1)
{
	float2 val = pow(src_0[0], src_1[0]);
}

