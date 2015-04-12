// Auto gen by integer_func_gen.py

__kernel void integer_max_short2short2(__global short2 *src_0, __global short2 *src_1, __global short2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = max(src_0[gid], src_1[gid]);
}

