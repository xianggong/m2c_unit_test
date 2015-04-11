// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_uint16uint16(__global uint16 *src_0, __global uint16 *src_1, __global uint16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rhadd(src_0[0], src_1[0]);
}
