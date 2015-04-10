// Auto gen by integer_func_gen.py

__kernel void integer_hadd_char16char16(__global char16 *src_0, __global char16 *src_1)
{
	char16 val = hadd(src_0[0], src_1[0]);
}

