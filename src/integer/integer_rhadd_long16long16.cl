// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_long16long16(__global long16 *src_0, __global long16 *src_1, __global long16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rhadd(src_0[gid], src_1[gid]);
}

