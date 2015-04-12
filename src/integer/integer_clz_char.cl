// Auto gen by integer_func_gen.py

__kernel void integer_clz_char(__global char *src_0, __global char *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[gid]);
}

