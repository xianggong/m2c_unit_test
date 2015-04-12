// Auto gen by arithmetic_operator_gen.py

__kernel void operator_post_increment_float16(__global float16 *src_0, __global float16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = (src_0[gid] ++);
}

