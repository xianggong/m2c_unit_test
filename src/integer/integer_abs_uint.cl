// Auto gen by integer_func_gen.py

__kernel void integer_abs_uint(__global uint *src_0, __global uint *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[gid]);
}

