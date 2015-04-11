// Auto gen by integer_func_gen.py

__kernel void integer_abs_uchar8(__global uchar8 *src_0, __global uchar8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs(src_0[0]);
}

