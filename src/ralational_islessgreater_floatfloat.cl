// Auto gen by ralational_func_gen.py

__kernel void ralational_islessgreater_floatfloat(__global float *src_0, __global float *src_1)
{
	int val = islessgreater(src_0[0], src_1[0]);
}

