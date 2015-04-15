// Auto gen by workitem_func_gen.py

__kernel void workitem_get_global_id_2(__global int *dst)
{
	int val = get_global_id(2);
	dst[val] = val;
}

