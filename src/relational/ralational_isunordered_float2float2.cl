// Auto gen by ralational_func_gen.py

__kernel void ralational_isunordered_float2float2(__global float2 *src_0, __global float2 *src_1)
{
	int2 val = isunordered(src_0[0], src_1[0]);
}

