// Auto gen by math_func_gen.py

__kernel void math_fmod_floatfloat(__global float *src_0, __global float *src_1)
{
	float val = fmod(src_0[0], src_1[0]);
}

