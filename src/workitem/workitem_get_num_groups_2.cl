// Auto gen by workitem_func_gen.py

__kernel void workitem_get_num_groups_2(__global int *dst)
{
	int val = get_num_groups(2);
	dst[val] = val;
}

