// Auto gen by integer_func_gen.py

__kernel void integer_clz_ulong4(__global ulong4 *src_0, __global ulong4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[0]);
}

