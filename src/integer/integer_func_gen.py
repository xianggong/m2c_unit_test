#!/usr/bin/python

# This script generates kernels to test build-in math functions
# e.g
# __kernel void integer_abs_char(__global char *src_0)
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
           "ulong", "ulong2", "ulong4", "ulong8", "ulong16"]

# Unsigned genertic datatype
ugentype = ["uchar", "uchar2", "uchar4", "uchar8", "uchar16",
            "uchar", "uchar2", "uchar4", "uchar8", "uchar16",
            "ushort", "ushort2", "ushort4", "ushort8", "ushort16",
            "ushort", "ushort2", "ushort4", "ushort8", "ushort16",
            "uint", "uint2", "uint4", "uint8", "uint16",
            "uint", "uint2", "uint4", "uint8", "uint16",
            "ulong", "ulong2", "ulong4", "ulong8", "ulong16",
            "ulong", "ulong2", "ulong4", "ulong8", "ulong16"]

# return type, function name, param 1 type, param 2 type, ...
integer_func_list = [(ugentype, "abs", gentype),
                     (ugentype, "abs_diff", gentype, gentype),
                     (gentype, "abs_sat", gentype, gentype),
                     (gentype, "hadd", gentype, gentype),
                     (gentype, "rhadd", gentype, gentype),
                     (gentype, "clz", gentype, gentype),
                     (gentype, "mad_hi", gentype, gentype, gentype),
                     (gentype, "mad_sat", gentype, gentype, gentype),
                     (gentype, "max", gentype, gentype),
                     (gentype, "min", gentype, gentype),
                     (gentype, "mul_hi", gentype, gentype),
                     (gentype, "rotate", gentype, gentype),
                     (gentype, "sub_sat", gentype, gentype)
                     # upsample
                     ]


def main():
        for func in integer_func_list:
                func_name = func[1]
                func_num_params = len(func) - 2
                for gentype_idx in range(len(func[2])):
                        file_name = "integer_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[2 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by integer_func_gen.py\n\n"
                        line += "__kernel void " + file_name + "("

                        for param_index in range(func_num_params):
                                param_type_list = func[2 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                param_type = param_type_list[type_idx]
                                line += "__global " + param_type
                                line += " *src_" + str(param_index)
                                if param_index < func_num_params - 1:
                                        line += ", "
                                else:
                                        line += ")\n"
                        line += "{\n"
                        return_type = func[0]
                        line += "\t" + return_type[type_idx] + " val = "
                        line += func_name + "("
                        for param in range(func_num_params):
                                line += "src_" + str(param) + "[0]"
                                if param != (func_num_params - 1):
                                        line += ", "
                        line += ");\n"
                        line += "}\n\n"

                        func_file.write(line)
                        func_file.close()

if __name__ == "__main__":
        main()
