// Auto gen by integer_func_gen.py

__kernel void integer_abs_int16(__global int16 *src_0, __global uint16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[0]);
}

