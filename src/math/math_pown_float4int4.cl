// Auto gen by math_func_gen.py

__kernel void math_pown_float4int4(__global float4 *src_0, __global int4 *src_1)
{
	int4 val = pown(src_0[0], src_1[0]);
}

