// Auto gen by integer_func_gen.py

__kernel void integer_rhadd_longlong(__global long *src_0, __global long *src_1, __global long *dst)
{
	int gid = get_global_id(0);
	dst[gid] = rhadd(src_0[0], src_1[0]);
}

