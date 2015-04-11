// Auto gen by integer_func_gen.py

__kernel void integer_abs_short4(__global short4 *src_0, __global ushort4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[0]);
}

