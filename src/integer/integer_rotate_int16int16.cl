// Auto gen by integer_func_gen.py

__kernel void integer_rotate_int16int16(__global int16 *src_0, __global int16 *src_1, __global int16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rotate(src_0[gid], src_1[gid]);
}

