// Auto gen by integer_func_gen.py

__kernel void integer_abs_ulong2(__global ulong2 *src_0, __global ulong2 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}

