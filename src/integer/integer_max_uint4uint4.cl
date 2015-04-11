// Auto gen by integer_func_gen.py

__kernel void integer_max_uint4uint4(__global uint4 *src_0, __global uint4 *src_1, __global uint4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = max(src_0[0], src_1[0]);
}

