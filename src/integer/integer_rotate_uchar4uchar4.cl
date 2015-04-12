// Auto gen by integer_func_gen.py

__kernel void integer_rotate_uchar4uchar4(__global uchar4 *src_0, __global uchar4 *src_1, __global uchar4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rotate(src_0[gid], src_1[gid]);
}

