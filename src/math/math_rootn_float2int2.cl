// Auto gen by math_func_gen.py

__kernel void math_rootn_float2int2(__global float2 *src_0, __global int2 *src_1)
{
	int2 val = rootn(src_0[0], src_1[0]);
}

