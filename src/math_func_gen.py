#!/usr/bin/python

gentype = ["float", "float2", "float4", "float16"]
inttype = ["int", "int2", "int4", "int16"]

math_func_list = [("acos",     gentype),
                  ("acosh",    gentype),
                  ("acospi",   gentype),
                  ("asin",     gentype),
                  ("asinh",    gentype),
                  ("asinpi",   gentype),
                  ("atan",     gentype),
                  ("atan2",    gentype, gentype),
                  ("atanh",    gentype),
                  ("atanpi",   gentype),
                  ("atan2pi",  gentype, gentype),
                  ("cbrt",     gentype),
                  ("ceil",     gentype),
                  ("copysign", gentype, gentype),
                  ("cos",      gentype),
                  ("cosh",     gentype),
                  ("cospi",    gentype),
                  ("erfc",     gentype),
                  ("erf",      gentype),
                  ("exp",      gentype),
                  ("exp2",     gentype),
                  ("exp10",    gentype),
                  ("expm1",    gentype),
                  ("fabs",     gentype),
                  ("fdim",     gentype, gentype),
                  ("floor",    gentype),
                  ("fma",      gentype, gentype, gentype),
                  ("fmax",     gentype, gentype),
                  ("fmax",     gentype, ["float"]),
                  ("fmin",     gentype),
                  ("fmin",     gentype, ["float"]),
                  ("fmod",     gentype, gentype),
                  # ("fract",    gentype),
                  # ("frexp",    gentype),
                  ("hypot",    gentype, gentype),
                  ("ilogb",    gentype),
                  ("ldexp",    gentype),
                  ("lgamma",   gentype),
                  # ("lgamma_r", gentype),
                  ("log",      gentype),
                  ("log10",    gentype),
                  ("log1p",    gentype),
                  ("logb",     gentype),
                  ("mad",      gentype, gentype, gentype),
                  # ("modf",     gentype),
                  ("nan",      ["uint"]),
                  ("nextafter", gentype, gentype),
                  ("pow",      gentype, gentype),
                  ("pown",     gentype, inttype),
                  ("powr",     gentype, gentype),
                  ("remainder", gentype, gentype),
                  # ("remquo",    gentype, gentype, ),
                  ("rint",     gentype),
                  ("rootn",    gentype, inttype),
                  ("round",    gentype),
                  ("rsqrt",    gentype),
                  ("sin",      gentype),
                  # ("sincos",   gentype, ),
                  ("sinh",     gentype),
                  ("sinpi",    gentype),
                  ("sqrt",     gentype),
                  ("tan",      gentype),
                  ("tanh",     gentype),
                  ("tanpi",    gentype),
                  ("tgamma",   gentype),
                  ("trunc",    gentype)
                  ]


def main():
        for func in math_func_list:
                func_name = func[0]
                func_param_count = len(func) - 1
                for gentype_idx in range(len(func[1])):
                        file_name = "math_" + func_name + "_"
                        for param_type_index in range(func_param_count):
                                param_type_list = func[1 + param_type_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by math_func_gen.py\n\n"
                        line += "__kernel void " + file_name + "("

                        for param_type_index in range(func_param_count):
                                param_type_list = func[1 + param_type_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                param_type = param_type_list[type_idx]
                                line += "__global " + param_type
                                line += " *src_" + str(param_type_index)
                                if param_type_index < func_param_count - 1:
                                        line += ", "
                                else:
                                        line += ")\n"
                        line += "{\n"
                        line += "\t" + param_type + " val = " + func_name + "("
                        for param in range(func_param_count):
                                line += "src_" + str(param) + "[0]"
                                if param != (func_param_count - 1):
                                        line += ", "
                        line += ");\n"
                        line += "}\n\n"

                        func_file.write(line)
                        func_file.close()

if __name__ == "__main__":
        main()
