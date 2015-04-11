// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_int4int4int4(__global int4 *src_0, __global int4 *src_1, __global int4 *src_2, __global int4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_sat(src_0[0], src_1[0], src_2[0]);
}

