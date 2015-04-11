// Auto gen by integer_func_gen.py

__kernel void integer_add_sat_short8short8(__global short8 *src_0, __global short8 *src_1, __global short8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = add_sat(src_0[0], src_1[0]);
}

