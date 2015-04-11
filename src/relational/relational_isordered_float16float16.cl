// Auto gen by relational_func_gen.py

__kernel void relational_isordered_float16float16(__global float16 *src_0, __global float16 *src_1, __global int16 *dst)
{
	int gid = get_global_id(0);
	dst[gid] = isordered(src_0[0], src_1[0]);
}
