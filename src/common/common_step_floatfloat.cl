// Auto gen by common_func_gen.py

__kernel void common_step_floatfloat(__global float *src_0, __global float *src_1, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = step(src_0[0], src_1[0]);
}

