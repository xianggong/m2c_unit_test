// Auto gen by workitem_func_gen.py

__kernel void workitem_get_local_size_1(__global int *dst)
{
	int val = get_local_size(1);
	dst[val] = val;
}

