// Auto gen by ralational_func_gen.py

__kernel void ralational_isnormal_float(__global float *src_0)
{
	int val = isnormal(src_0[0]);
}

