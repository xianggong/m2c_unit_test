// Auto gen by integer_func_gen.py

__kernel void integer_abs_long16(__global long16 *src_0, __global ulong16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}

