// Auto gen by arithmetic_operator_gen.py

__kernel void operator_post_decrement_char8(__global char8 *src_0, __global char8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] --);
}

