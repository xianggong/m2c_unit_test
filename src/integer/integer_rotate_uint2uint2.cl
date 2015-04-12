// Auto gen by integer_func_gen.py

__kernel void integer_rotate_uint2uint2(__global uint2 *src_0, __global uint2 *src_1, __global uint2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rotate(src_0[gid], src_1[gid]);
}

