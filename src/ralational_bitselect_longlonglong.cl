// Auto gen by ralational_func_gen.py

__kernel void ralational_bitselect_longlonglong(__global long *src_0, __global long *src_1, __global long *src_2)
{
	long val = bitselect(src_0[0], src_1[0], src_2[0]);
}

