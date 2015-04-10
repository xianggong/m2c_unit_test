// Auto gen by ralational_func_gen.py

__kernel void ralational_isgreaterequal_floatfloat(__global float *src_0, __global float *src_1)
{
	int val = isgreaterequal(src_0[0], src_1[0]);
}

