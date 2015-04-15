// Auto gen by workitem_func_gen.py

__kernel void workitem_get_local_size_0(__global int *dst)
{
	int val = get_local_size(0);
	dst[val] = val;
}

