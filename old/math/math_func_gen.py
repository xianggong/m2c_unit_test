#!/usr/bin/python

# This script generates kernels to test build-in math functions
# e.g
# __kernel void math_acos_float(__global float *src_0, __global float *dst)
# {
#   int gid = get_global_id(0);
#   dst[gid] = acos(src_0[0]);
# }


gentype = ["float", "float2", "float4", "float8", "float16"]
inttype = ["int", "int2", "int4", "int8", "int16"]

math_func_list = [(gentype, "acos",          gentype),
                  (gentype, "acosh",         gentype),
                  (gentype, "acospi",        gentype),
                  (gentype, "asin",          gentype),
                  (gentype, "asinh",         gentype),
                  (gentype, "asinpi",        gentype),
                  (gentype, "atan",          gentype),
                  (gentype, "atan2",         gentype, gentype),
                  (gentype, "atanh",         gentype),
                  (gentype, "atanpi",        gentype),
                  (gentype, "atan2pi",       gentype, gentype),
                  (gentype, "cbrt",          gentype),
                  (gentype, "ceil",          gentype),
                  (gentype, "copysign",      gentype, gentype),
                  (gentype, "cos",           gentype),
                  (gentype, "cosh",          gentype),
                  (gentype, "cospi",         gentype),
                  (gentype, "erfc",          gentype),
                  (gentype, "erf",           gentype),
                  (gentype, "exp",           gentype),
                  (gentype, "exp2",          gentype),
                  (gentype, "exp10",         gentype),
                  (gentype, "expm1",         gentype),
                  (gentype, "fabs",          gentype),
                  (gentype, "fdim",          gentype, gentype),
                  (gentype, "floor",         gentype),
                  (gentype, "fma",           gentype, gentype, gentype),
                  (gentype, "fmax",          gentype, gentype),
                  (gentype, "fmax",          gentype, ["float"]),
                  (gentype, "fmin",          gentype),
                  (gentype, "fmin",          gentype, ["float"]),
                  (gentype, "fmod",          gentype, gentype),
                  # (gentype, "fract",         gentype),
                  # (gentype, "frexp",         gentype),
                  (gentype, "hypot",         gentype, gentype),
                  (gentype, "ilogb",         gentype),
                  (gentype, "ldexp",         gentype),
                  (gentype, "lgamma",        gentype),
                  # (gentype, "lgamma_r",      gentype),
                  (gentype, "log",           gentype),
                  (gentype, "log10",         gentype),
                  (gentype, "log1p",         gentype),
                  (gentype, "logb",          gentype),
                  (gentype, "mad",           gentype, gentype, gentype),
                  # (gentype, "modf",          gentype),
                  (gentype, "nan",           ["uint"]),
                  (gentype, "nextafter",     gentype, gentype),
                  (gentype, "pow",           gentype, gentype),
                  (gentype, "pown",          gentype, inttype),
                  (gentype, "powr",          gentype, gentype),
                  (gentype, "remainder",     gentype, gentype),
                  # (gentype, "remquo",        gentype, gentype, ),
                  (gentype, "rint",          gentype),
                  (gentype, "rootn",         gentype, inttype),
                  (gentype, "round",         gentype),
                  (gentype, "rsqrt",         gentype),
                  (gentype, "sin",           gentype),
                  # (gentype, "sincos",        gentype, ),
                  (gentype, "sinh",          gentype),
                  (gentype, "sinpi",         gentype),
                  (gentype, "sqrt",          gentype),
                  (gentype, "tan",           gentype),
                  (gentype, "tanh",          gentype),
                  (gentype, "tanpi",         gentype),
                  (gentype, "tgamma",        gentype),
                  (gentype, "trunc",         gentype),
                  (gentype, "half_cos",      gentype),
                  (gentype, "half_divide",   gentype, gentype),
                  (gentype, "half_exp",      gentype),
                  (gentype, "half_exp2",     gentype),
                  (gentype, "half_exp10",    gentype),
                  (gentype, "half_log",      gentype),
                  (gentype, "half_log2",     gentype),
                  (gentype, "half_log10",    gentype),
                  (gentype, "half_powr",     gentype, gentype),
                  (gentype, "half_recip",    gentype),
                  (gentype, "half_rsqrt",    gentype),
                  (gentype, "half_sin",      gentype),
                  (gentype, "half_sqrt",     gentype),
                  (gentype, "half_tan",      gentype),
                  (gentype, "native_cos",    gentype),
                  (gentype, "native_divide", gentype),
                  (gentype, "native_exp",    gentype),
                  (gentype, "native_exp2",   gentype),
                  (gentype, "native_exp10",  gentype),
                  (gentype, "native_log",    gentype),
                  (gentype, "native_log2",   gentype),
                  (gentype, "native_log10",  gentype),
                  (gentype, "native_powr",   gentype),
                  (gentype, "native_recip",  gentype),
                  (gentype, "native_rsqrt",  gentype),
                  (gentype, "native_sin",    gentype),
                  (gentype, "native_sqrt",   gentype),
                  (gentype, "native_tan",    gentype)
                  ]


def main():
        for func in math_func_list:
                func_name = func[1]
                func_num_params = len(func) - 2
                for gentype_idx in range(len(func[2])):
                        file_name = "math_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[2 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".cl", "w+")

                        line = "// Auto gen by math_func_gen.py\n\n"
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
