// Auto gen by relational_func_gen.py

__kernel void relational_bitselect_char16char16char16(__global char16 *src_0, __global char16 *src_1, __global char16 *src_2, __global char16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[0], src_1[0], src_2[0]);
}

