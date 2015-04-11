// Auto gen by relational_func_gen.py

__kernel void relational_bitselect_ulongulongulong(__global ulong *src_0, __global ulong *src_1, __global ulong *src_2, __global ulong *dst)
{
	int gid = get_global_id(0);
	dst[gid] = bitselect(src_0[0], src_1[0], src_2[0]);
}

