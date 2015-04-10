// Auto gen by common_func_gen.py

__kernel void common_mix_float8float8float(__global float8 *src_0, __global float8 *src_1, __global float *src_2)
{
	float val = mix(src_0[0], src_1[0], src_2[0]);
}

