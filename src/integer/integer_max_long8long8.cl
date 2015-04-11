// Auto gen by integer_func_gen.py

__kernel void integer_max_long8long8(__global long8 *src_0, __global long8 *src_1, __global long8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = max(src_0[0], src_1[0]);
}

