// Auto gen by integer_func_gen.py

__kernel void integer_rotate_ulong4ulong4(__global ulong4 *src_0, __global ulong4 *src_1)
{
	ulong4 val = rotate(src_0[0], src_1[0]);
}

