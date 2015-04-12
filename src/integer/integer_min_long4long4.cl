// Auto gen by integer_func_gen.py

__kernel void integer_min_long4long4(__global long4 *src_0, __global long4 *src_1, __global long4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = min(src_0[gid], src_1[gid]);
}

