// Auto gen by integer_func_gen.py

__kernel void integer_abs_short16(__global short16 *src_0, __global ushort16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[0]);
}

