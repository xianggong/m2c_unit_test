// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_short16short16(__global short16 *src_0, __global short16 *src_1, __global short16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = sub_sat(src_0[gid], src_1[gid]);
}

