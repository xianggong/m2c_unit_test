// Auto gen by integer_func_gen.py

__kernel void integer_clz_uint(__global uint *src_0, __global uint *dst)
{
	int gid = get_global_id(0);
	dst[gid] = clz(src_0[0]);
}

