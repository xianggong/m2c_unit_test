// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_long16long16(__global long16 *src_0, __global long16 *src_1, __global long16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mul_hi(src_0[0], src_1[0]);
}
