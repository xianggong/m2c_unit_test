// Auto gen by common_func_gen.py

__kernel void common_radians_float8(__global float8 *src_0)
{
	float8 val = radians(src_0[0]);
}

