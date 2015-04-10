// Auto gen by ralational_func_gen.py

__kernel void ralational_signbit_float16(__global float16 *src_0)
{
	int16 val = signbit(src_0[0]);
}

