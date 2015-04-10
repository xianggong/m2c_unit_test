// Auto gen by ralational_func_gen.py

__kernel void ralational_isnormal_float16(__global float16 *src_0)
{
	int16 val = isnormal(src_0[0]);
}

