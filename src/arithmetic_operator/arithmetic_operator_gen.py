#!/usr/bin/python

# This script generates kernels to test build-in math functions
# e.g
# __kernel void arithmetic_operator__char(__global char *src_0)
# {
#         uchar val = abs(src_0[0]);
# }

# Genertic datatype
gentype = ["char", "char2", "char4", "char8", "char16",
           "uchar", "uchar2", "uchar4", "uchar8", "uchar16",
           "short", "short2", "short4", "short8", "short16",
           "ushort", "ushort2", "ushort4", "ushort8", "ushort16",
           "int", "int2", "int4", "int8", "int16",
           "uint", "uint2", "uint4", "uint8", "uint16",
           "long", "long2", "long4", "long8", "long16",
           "ulong", "ulong2", "ulong4", "ulong8", "ulong16",
           "int", "int2", "int4", "int8", "int16",
           "float", "float2", "float4", "float8", "float16"]

divtype = ["float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16",
           "float", "float2", "float4", "float8", "float16"]

inttype = ["char", "char2", "char4", "char8", "char16",
           "uchar", "uchar2", "uchar4", "uchar8", "uchar16",
           "short", "short2", "short4", "short8", "short16",
           "ushort", "ushort2", "ushort4", "ushort8", "ushort16",
           "int", "int2", "int4", "int8", "int16",
           "uint", "uint2", "uint4", "uint8", "uint16",
           "long", "long2", "long4", "long8", "long16",
           "ulong", "ulong2", "ulong4", "ulong8", "ulong16",
           "int", "int2", "int4", "int8", "int16"]

# return type, operator name, operator alias, param 1 type, param 2 type, ...
arithmetic_operator_list = [(gentype, "+", "add", gentype, gentype),
                            (gentype, "-", "substract", gentype, gentype),
                            (gentype, "*", "muliply", gentype, gentype),
                            (divtype, "/", "divide", gentype, gentype),
                            (inttype, "%", "remainder", inttype, inttype),
                            (gentype, "++", "post_increment", gentype),
                            (gentype, "--", "post_decrement", gentype),
                            ]

arithmetic_operator_list_pre = [(inttype, "++", "pre_increment", inttype),
                                (inttype, "--", "pre_decrement", inttype)
                                ]


def gen():
        for func in arithmetic_operator_list:
                func_name = func[2]
                func_num_params = len(func) - 3
                for gentype_idx in range(len(func[3])):
                        file_name = "operator_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[3 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by arithmetic_operator_gen.py\n\n"
                        line += "__kernel void " + file_name + "("

                        for param_index in range(func_num_params):
                                param_type_list = func[3 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                param_type = param_type_list[type_idx]
                                line += "__global " + param_type
                                line += " *src_" + str(param_index)
                                line += ", "
                        return_type = func[0]
                        param_type = func[3]
                        line += "__global " + return_type[type_idx] + " *dst)\n"
                        line += "{\n"
                        line += "\tint gid = get_global_id(0);\n"
                        line += "\tdst[gid] = "
                        if return_type[type_idx] != param_type[type_idx]:
                                line += "(" + return_type[type_idx] + ")"
                        line += "("
                        line += "src_0[gid] " + func[1]
                        if func_num_params == 2:
                                line += " src_1[gid]"
                        line += ");\n"
                        line += "}\n\n"

                        func_file.write(line)
                        func_file.close()


def genPre():
        for func in arithmetic_operator_list_pre:
                func_name = func[2]
                func_num_params = len(func) - 3
                for gentype_idx in range(len(func[3])):
                        file_name = "operator_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[3 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by arithmetic_operator_gen.py\n\n"
                        line += "__kernel void " + file_name + "("

                        for param_index in range(func_num_params):
                                param_type_list = func[3 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                param_type = param_type_list[type_idx]
                                line += "__global " + param_type
                                line += " *src_" + str(param_index)
                                line += ", "
                        return_type = func[0]
                        param_type = func[3]
                        line += "__global " + return_type[type_idx] + " *dst)\n"
                        line += "{\n"
                        line += "\tint gid = get_global_id(0);\n"
                        line += "\tdst[gid] = "
                        line += func[1]
                        line += "(src_0[gid]);\n"
                        line += "}\n\n"

                        func_file.write(line)
                        func_file.close()


def main():
        gen()
        genPre()

if __name__ == "__main__":
        main()
