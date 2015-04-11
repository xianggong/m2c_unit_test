// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_uintuint(__global uint *src_0, __global uint *src_1, __global uint *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rhadd(src_0[0], src_1[0]);
}
