#!/usr/bin/python

generic_type = ["float", "float2", "float4", "float16"]

math_func_list = [("acos",     generic_type),
                  ("acosh",    generic_type),
                  ("acospi",   generic_type),
                  ("asin",     generic_type),
                  ("asinh",    generic_type),
                  ("asinpi",   generic_type),
                  ("atan",     generic_type),
                  ("atan2",    generic_type, generic_type),
                  ("atanh",    generic_type),
                  ("atanpi",   generic_type),
                  ("atan2pi",  generic_type, generic_type),
                  ("cbrt",     generic_type),
                  ("ceil",     generic_type),
                  ("copysign", generic_type, generic_type),
                  ("cos",      generic_type),
                  ("cosh",     generic_type),
                  ("cospi",    generic_type),
                  ("erfc",     generic_type),
                  ("erf",      generic_type),
                  ("exp",      generic_type),
                  ("exp2",     generic_type),
                  ("exp10",    generic_type),
                  ("expm1",    generic_type),
                  ("fabs",     generic_type),
                  ("fdim",     generic_type, generic_type),
                  ("floor",    generic_type),
                  ("fma",      generic_type, generic_type, generic_type),
                  ("fmax",     generic_type, generic_type),
                  ("fmax",     generic_type, "float"),
                  ("fmin",     generic_type),
                  ("fmin",     generic_type, "float"),
                  ("fmod",     generic_type, generic_type),
                  # ("fract",    generic_type),
                  # ("frexp",    generic_type),
                  ("hypot",    generic_type, generic_type),
                  ("ilogb",    generic_type),
                  ("ldexp",    generic_type),
                  ("lgamma",   generic_type),
                  # ("lgamma_r", generic_type),
                  ("log",      generic_type)
                  ]


def main():
        for func in math_func_list:
                func_name = func[0]
                func_param_type = func[1]
                func_param_count = len(func) - 1
                for ptype in func_param_type:
                        func_prefix = "math_" + func_name + "_" + ptype
                        func_file = open(func_prefix + ".cl", "w+")
                        line = "// Auto gen by math_func_gen.py\n\n"
                        line += "__kernel void " + func_prefix + "("
                        for param in range(func_param_count):
                                line += "__global " + ptype
                                line += " *src_" + str(param)
                                if param != (func_param_count - 1):
                                        line += ", "
                                else:
                                        line += ")\n"
                        line += "{\n"
                        line += "\t" + ptype + " val = " + func_name + "("
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
