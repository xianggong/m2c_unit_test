// Auto gen by integer_func_gen.py

__kernel void integer_abs_ulong(__global ulong *src_0, __global ulong *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}

