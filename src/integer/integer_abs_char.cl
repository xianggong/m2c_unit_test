// Auto gen by integer_func_gen.py

__kernel void integer_abs_char(__global char *src_0, __global uchar *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[0]);
}

