// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_uchar8uchar8(__global uchar8 *src_0, __global uchar8 *src_1, __global uchar8 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mul_hi(src_0[0], src_1[0]);
}

