// Auto gen by workitem_func_gen.py

__kernel void workitem_get_num_groups_0(__global int *dst)
{
	int val = get_num_groups(0);
	dst[val] = val;
}

