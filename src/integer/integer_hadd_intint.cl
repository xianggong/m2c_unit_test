// Auto gen by integer_func_gen.py

__kernel void integer_hadd_intint(__global int *src_0, __global int *src_1, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = hadd(src_0[gid], src_1[gid]);
}

