// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_intint(__global int *src_0, __global int *src_1, __global int *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mul_hi(src_0[0], src_1[0]);
}
