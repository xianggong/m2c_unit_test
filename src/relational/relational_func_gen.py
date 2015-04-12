#!/usr/bin/python

# This script generates kernels to test build-in math functions
# e.g

# Genertic datatype

floattype = ["float", "float2", "float4", "float8", "float16"]
inttype = ["int", "int2", "int4", "int8", "int16"]

gentype = ["char", "char2", "char4", "char8", "char16",
           "uchar", "uchar2", "uchar4", "uchar8", "uchar16",
           "short", "short2", "short4", "short8", "short16",
           "ushort", "ushort2", "ushort4", "ushort8", "ushort16",
           "int", "int2", "int4", "int8", "int16",
           "uint", "uint2", "uint4", "uint8", "uint16",
           "long", "long2", "long4", "long8", "long16",
           "ulong", "ulong2", "ulong4", "ulong8", "ulong16"]

# return type, function name, param 1 type, param 2 type, ...
relational_func_list = [(inttype, "isequal", floattype, floattype),
                        (inttype, "isnotequal", floattype, floattype),
                        (inttype, "isgreater", floattype, floattype),
                        (inttype, "isgreaterequal", floattype, floattype),
                        (inttype, "isless", floattype, floattype),
                        (inttype, "islessequal", floattype, floattype),
                        (inttype, "islessgreater", floattype, floattype),
                        (inttype, "isfinite", floattype),
                        (inttype, "isinf", floattype),
                        (inttype, "isnan", floattype),
                        (inttype, "isnormal", floattype),
                        (inttype, "isordered", floattype, floattype),
                        (inttype, "isunordered", floattype, floattype),
                        (inttype, "signbit", floattype),
                        # (["int"], "any", igentype),
                        # (["int"], "all", igentype),
                        (gentype, "bitselect", gentype, gentype, gentype)
                        # (gentype, "select", gentype, gentype, igentype)
                        # (gentype, "select", gentype, gentype, ugentype)
                        ]


def main():
        for func in relational_func_list:
                func_name = func[1]
                func_num_params = len(func) - 2
                for gentype_idx in range(len(func[2])):
                        file_name = "relational_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[2 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by relational_func_gen.py\n\n"
                        line += "__kernel void " + file_name + "("

                        for param_index in range(func_num_params):
                                param_type_list = func[2 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                param_type = param_type_list[type_idx]
                                line += "__global " + param_type
                                line += " *src_" + str(param_index)
                                line += ", "
                        return_type = func[0]
                        line += "__global " + return_type[type_idx] + " *dst)\n"
                        line += "{\n"
                        line += "\tint gid = get_global_id(0);\n"
                        line += "\tdst[gid] = "
                        line += func_name + "("
                        for param in range(func_num_params):
                                line += "src_" + str(param) + "[gid]"
                                if param != (func_num_params - 1):
                                        line += ", "
                        line += ");\n"
                        line += "}\n\n"

                        func_file.write(line)
                        func_file.close()


if __name__ == "__main__":
        main()
