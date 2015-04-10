#!/usr/bin/python

# This script generates kernels to test build-in math functions
# e.g
# __kernel void common_sign_float(__global float *src_0)
# {
#         float val = sign(src_0[0]);
# }


# Genertic datatype
gentype = ["float", "float2", "float4", "float8", "float16"]

common_func_list = [(gentype, "clamp", gentype, gentype, gentype),
                    (gentype, "clamp", gentype, ["float"], ["float"]),
                    (gentype, "degrees", gentype),
                    (gentype, "max", gentype, gentype),
                    (gentype, "max", gentype, ["float"]),
                    (gentype, "min", gentype, gentype),
                    (gentype, "min", gentype, ["float"]),
                    (gentype, "mix", gentype, gentype, gentype),
                    (gentype, "mix", gentype, gentype, ["float"]),
                    (gentype, "radians", gentype),
                    (gentype, "step", gentype, gentype),
                    # (gentype, "step", ["float"], gentype),
                    (gentype, "smoothstep", gentype, gentype, gentype),
                    # (gentype, "smoothstep", ["float"], ["float"], gentype),
                    (gentype, "sign", gentype)]


def main():
        for func in common_func_list:
                func_name = func[1]
                func_num_params = len(func) - 2
                for gentype_idx in range(len(func[2])):
                        file_name = "common_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[2 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by common_func_gen.py\n\n"
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
