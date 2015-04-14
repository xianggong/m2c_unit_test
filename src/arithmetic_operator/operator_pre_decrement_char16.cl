// Auto gen by arithmetic_operator_gen.py

__kernel void operator_pre_decrement_char16(__global char16 *src_0, __global char16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = --(src_0[gid]);
}

