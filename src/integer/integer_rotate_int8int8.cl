// Auto gen by integer_func_gen.py

__kernel void integer_rotate_int8int8(__global int8 *src_0, __global int8 *src_1, __global int8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rotate(src_0[0], src_1[0]);
}
