// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_int4int4(__global int4 *src_0, __global int4 *src_1, __global uint4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[gid], src_1[gid]);
}

