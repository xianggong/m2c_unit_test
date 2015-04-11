// Auto gen by math_func_gen.py

__kernel void math_pow_floatfloat(__global float *src_0, __global float *src_1, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = pow(src_0[0], src_1[0]);
}
