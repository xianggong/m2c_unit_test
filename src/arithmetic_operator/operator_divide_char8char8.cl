// Auto gen by arithmetic_operator_gen.py

__kernel void operator_divide_char8char8(__global char8 *src_0, __global char8 *src_1, __global float8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (float8)(src_0[gid] / src_1[gid]);
}

