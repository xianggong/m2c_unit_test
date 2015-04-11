// Auto gen by integer_func_gen.py

__kernel void integer_abs_char4(__global char4 *src_0, __global uchar4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[0]);
}

