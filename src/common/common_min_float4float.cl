// Auto gen by common_func_gen.py

__kernel void common_min_float4float(__global float4 *src_0, __global float *src_1)
{
	float val = min(src_0[0], src_1[0]);
}

