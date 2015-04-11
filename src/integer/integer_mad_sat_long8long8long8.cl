// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_long8long8long8(__global long8 *src_0, __global long8 *src_1, __global long8 *src_2, __global long8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_sat(src_0[0], src_1[0], src_2[0]);
}

