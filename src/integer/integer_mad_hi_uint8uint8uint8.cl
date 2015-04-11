// Auto gen by integer_func_gen.py

__kernel void integer_mad_hi_uint8uint8uint8(__global uint8 *src_0, __global uint8 *src_1, __global uint8 *src_2, __global uint8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mad_hi(src_0[0], src_1[0], src_2[0]);
}
