// Auto gen by common_func_gen.py

__kernel void common_degrees_float8(__global float8 *src_0)
{
	float8 val = degrees(src_0[0]);
}

