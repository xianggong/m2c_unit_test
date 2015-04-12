// Auto gen by integer_func_gen.py

__kernel void integer_sub_sat_char8char8(__global char8 *src_0, __global char8 *src_1, __global char8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = sub_sat(src_0[gid], src_1[gid]);
}

