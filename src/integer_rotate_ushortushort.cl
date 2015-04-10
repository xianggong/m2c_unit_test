// Auto gen by integer_func_gen.py

__kernel void integer_rotate_ushortushort(__global ushort *src_0, __global ushort *src_1)
{
	ushort val = rotate(src_0[0], src_1[0]);
}

