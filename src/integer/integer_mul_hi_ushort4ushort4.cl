// Auto gen by integer_func_gen.py

__kernel void integer_mul_hi_ushort4ushort4(__global ushort4 *src_0, __global ushort4 *src_1, __global ushort4 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mul_hi(src_0[0], src_1[0]);
}

