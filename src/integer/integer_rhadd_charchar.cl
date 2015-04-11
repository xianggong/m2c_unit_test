// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_charchar(__global char *src_0, __global char *src_1, __global char *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rhadd(src_0[0], src_1[0]);
}
