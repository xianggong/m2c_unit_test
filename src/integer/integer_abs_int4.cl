// Auto gen by integer_func_gen.py

__kernel void integer_abs_int4(__global int4 *src_0, __global uint4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}

