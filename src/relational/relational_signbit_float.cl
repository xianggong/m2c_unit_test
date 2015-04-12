// Auto gen by relational_func_gen.py

__kernel void relational_signbit_float(__global float *src_0, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = signbit(src_0[gid]);
}

