// Auto gen by relational_func_gen.py

__kernel void relational_isordered_floatfloat(__global float *src_0, __global float *src_1, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isordered(src_0[gid], src_1[gid]);
}

