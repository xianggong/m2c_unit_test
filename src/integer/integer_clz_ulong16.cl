// Auto gen by integer_func_gen.py

__kernel void integer_clz_ulong16(__global ulong16 *src_0, __global ulong16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[0]);
}

