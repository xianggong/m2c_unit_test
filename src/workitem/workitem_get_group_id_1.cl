// Auto gen by workitem_func_gen.py

__kernel void workitem_get_group_id_1(__global int *dst)
{
	int val = get_group_id(1);
	dst[val] = val;
}

