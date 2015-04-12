// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_int4int4int4(__global int4 *src_0, __global int4 *src_1, __global int4 *src_2, __global int4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_hi(src_0[gid], src_1[gid], src_2[gid]);
}

