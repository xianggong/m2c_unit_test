// Auto gen by integer_func_gen.py

__kernel void integer_rotate_uintuint(__global uint *src_0, __global uint *src_1, __global uint *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rotate(src_0[0], src_1[0]);
}

