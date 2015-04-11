// Auto gen by integer_func_gen.py

__kernel void integer_hadd_long4long4(__global long4 *src_0, __global long4 *src_1, __global long4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = hadd(src_0[0], src_1[0]);
}

