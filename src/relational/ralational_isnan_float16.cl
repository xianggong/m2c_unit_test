// Auto gen by ralational_func_gen.py

__kernel void ralational_isnan_float16(__global float16 *src_0)
{
	int16 val = isnan(src_0[0]);
}

