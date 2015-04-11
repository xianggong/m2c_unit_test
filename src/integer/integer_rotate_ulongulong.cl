// Auto gen by integer_func_gen.py

__kernel void integer_rotate_ulongulong(__global ulong *src_0, __global ulong *src_1, __global ulong *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rotate(src_0[0], src_1[0]);
}

