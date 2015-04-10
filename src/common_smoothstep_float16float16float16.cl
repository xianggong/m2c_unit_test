// Auto gen by common_func_gen.py

__kernel void common_smoothstep_float16float16float16(__global float16 *src_0, __global float16 *src_1, __global float16 *src_2)
{
	float16 val = smoothstep(src_0[0], src_1[0], src_2[0]);
}

