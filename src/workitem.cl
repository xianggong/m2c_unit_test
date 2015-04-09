__kernel void test_get_global_id_0()
{
	int id = get_global_id(0);
}

__kernel void test_get_global_id_1()
{
	int id = get_global_id(1);
}

__kernel void test_get_global_id_2()
{
	int id = get_global_id(2);
}
