// Auto gen by math_func_gen.py

__kernel void math_pown_float16int16(__global float16 *src_0, __global int16 *src_1, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = pown(src_0[0], src_1[0]);
}

