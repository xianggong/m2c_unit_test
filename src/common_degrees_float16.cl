// Auto gen by common_func_gen.py

__kernel void common_degrees_float16(__global float16 *src_0)
{
	float16 val = degrees(src_0[0]);
}

