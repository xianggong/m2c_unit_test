// Auto gen by integer_func_gen.py

__kernel void integer_abs_long4(__global long4 *src_0, __global ulong4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}

