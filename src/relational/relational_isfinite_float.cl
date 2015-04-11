// Auto gen by relational_func_gen.py

__kernel void relational_isfinite_float(__global float *src_0, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isfinite(src_0[0]);
}

