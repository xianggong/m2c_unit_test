// Auto gen by integer_func_gen.py

__kernel void integer_hadd_uintuint(__global uint *src_0, __global uint *src_1)
{
	uint val = hadd(src_0[0], src_1[0]);
}

