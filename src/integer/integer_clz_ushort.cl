// Auto gen by integer_func_gen.py

__kernel void integer_clz_ushort(__global ushort *src_0, __global ushort *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[0]);
}

