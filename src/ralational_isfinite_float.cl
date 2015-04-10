// Auto gen by ralational_func_gen.py

__kernel void ralational_isfinite_float(__global float *src_0)
{
	int val = isfinite(src_0[0]);
}

