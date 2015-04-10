// Auto gen by common_func_gen.py

__kernel void common_sign_float16(__global float16 *src_0)
{
	float16 val = sign(src_0[0]);
}

