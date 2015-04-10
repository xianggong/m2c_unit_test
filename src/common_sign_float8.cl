// Auto gen by common_func_gen.py

__kernel void common_sign_float8(__global float8 *src_0)
{
	float8 val = sign(src_0[0]);
}

