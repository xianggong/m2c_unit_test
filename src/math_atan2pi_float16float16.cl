// Auto gen by math_func_gen.py

__kernel void math_atan2pi_float16float16(__global float16 *src_0, __global float16 *src_1)
{
	float16 val = atan2pi(src_0[0], src_1[0]);
}

