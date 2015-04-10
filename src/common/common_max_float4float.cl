// Auto gen by common_func_gen.py

__kernel void common_max_float4float(__global float4 *src_0, __global float *src_1)
{
	float val = max(src_0[0], src_1[0]);
}

