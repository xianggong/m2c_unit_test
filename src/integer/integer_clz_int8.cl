// Auto gen by integer_func_gen.py

__kernel void integer_clz_int8(__global int8 *src_0, __global int8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[gid]);
}

