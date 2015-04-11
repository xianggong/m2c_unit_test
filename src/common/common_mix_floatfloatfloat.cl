// Auto gen by common_func_gen.py

__kernel void common_mix_floatfloatfloat(__global float *src_0, __global float *src_1, __global float *src_2, __global float *dst)
{
	int gid = get_global_id(0);
	dst[gid] = mix(src_0[0], src_1[0], src_2[0]);
}

