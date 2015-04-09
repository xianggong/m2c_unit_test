#!/usr/bin/python

# This script generates kernels to test build-in workitem functions
# e.g
# __kernel void get_global_size_0()
# {
#         size_t val = get_global_size(0);
# }

workitem_func_list = ["get_global_size", "get_global_id",
                      "get_local_size", "get_local_id",
                      "get_num_groups", "get_group_id"]

workitem_func_param_list = ["0", "1", "2"]


def main():
        for func in workitem_func_list:
                for param in workitem_func_param_list:
                        func_name = "workitem_" + func + "_" + param
                        func_file = open(func_name + ".cl", "w+")
                        line = "__kernel void " + func_name + "()\n"
                        line += "{\n"
                        line += "\tsize_t val = " + func + "(" + param + ");\n"
                        line += "}\n\n"

                        func_file.write(line)

if __name__ == "__main__":
        main()
