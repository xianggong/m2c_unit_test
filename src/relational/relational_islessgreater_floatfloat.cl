// Auto gen by relational_func_gen.py

__kernel void relational_islessgreater_floatfloat(__global float *src_0, __global float *src_1, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = islessgreater(src_0[0], src_1[0]);
}

