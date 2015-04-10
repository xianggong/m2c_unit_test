// Auto gen by common_func_gen.py

__kernel void common_radians_float16(__global float16 *src_0)
{
	float16 val = radians(src_0[0]);
}

