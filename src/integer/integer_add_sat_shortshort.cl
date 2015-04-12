// Auto gen by integer_func_gen.py

__kernel void integer_add_sat_shortshort(__global short *src_0, __global short *src_1, __global short *dst)
{
	int gid = get_global_id(0);
	dst[gid] = add_sat(src_0[gid], src_1[gid]);
}

