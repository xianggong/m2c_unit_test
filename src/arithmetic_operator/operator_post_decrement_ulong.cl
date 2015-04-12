// Auto gen by arithmetic_operator_gen.py

__kernel void operator_post_decrement_ulong(__global ulong *src_0, __global ulong *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] --);
}

