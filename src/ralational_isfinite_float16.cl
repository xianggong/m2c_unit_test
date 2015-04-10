// Auto gen by ralational_func_gen.py

__kernel void ralational_isfinite_float16(__global float16 *src_0)
{
	int16 val = isfinite(src_0[0]);
}

