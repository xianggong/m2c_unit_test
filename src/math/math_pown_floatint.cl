// Auto gen by math_func_gen.py

__kernel void math_pown_floatint(__global float *src_0, __global int *src_1, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = pown(src_0[0], src_1[0]);
}
