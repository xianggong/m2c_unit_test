// Auto gen by integer_func_gen.py

__kernel void integer_clz_uchar(__global uchar *src_0, __global uchar *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[gid]);
}

