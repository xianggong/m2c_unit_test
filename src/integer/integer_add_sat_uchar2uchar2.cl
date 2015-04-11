// Auto gen by integer_func_gen.py

__kernel void integer_add_sat_uchar2uchar2(__global uchar2 *src_0, __global uchar2 *src_1, __global uchar2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = add_sat(src_0[0], src_1[0]);
}

