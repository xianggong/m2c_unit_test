// Auto gen by common_func_gen.py

__kernel void common_step_float8float8(__global float8 *src_0, __global float8 *src_1)
{
	float8 val = step(src_0[0], src_1[0]);
}

