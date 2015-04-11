// Auto gen by integer_func_gen.py

__kernel void integer_abs_diff_ushort4ushort4(__global ushort4 *src_0, __global ushort4 *src_1, __global ushort4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = abs_diff(src_0[0], src_1[0]);
}

