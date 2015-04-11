// Auto gen by integer_func_gen.py

__kernel void integer_mad_sat_charcharchar(__global char *src_0, __global char *src_1, __global char *src_2, __global char *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_sat(src_0[0], src_1[0], src_2[0]);
}

