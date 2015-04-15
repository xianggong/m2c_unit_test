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


def getFuncName(func):
        return func[2]


def getFuncNumParams(func):
        return len(func) - 3


def gen():
        for func in arithmetic_operator_list:
                func_name = getFuncName(func)
                func_num_params = getFuncNumParams(func)
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
                func_name = getFuncName(func)
                func_num_params = getFuncNumParams(func)
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


def appendHeaders(line):
        line += "#include <stdio.h>\n"
        line += "#include <stdlib.h>\n"
        line += "#include <string.h>\n"
        line += "#include <CL/cl.h>\n"
        line += "\n"
        return line


def appendHelperFunc(line):
        line += "unsigned char *read_buffer(char *file_name, size_t *size_ptr)\n"
        line += "{\n"
        line += "        FILE *f;\n"
        line += "        unsigned char *buf;\n"
        line += "        size_t size;\n"
        line += "\n"
        line += "        /* Open file */\n"
        line += "        f = fopen(file_name, \"rb\");\n"
        line += "\n"
        line += "        if (!f)\n"
        line += "        return NULL;\n"
        line += "\n"
        line += "        /* Obtain file size */\n"
        line += "        fseek(f, 0, SEEK_END);\n"
        line += "        size = ftell(f);\n"
        line += "        fseek(f, 0, SEEK_SET);\n"
        line += "\n"
        line += "        /* Allocate and read buffer */\n"
        line += "        buf = malloc(size + 1);\n"
        line += "        fread(buf, 1, size, f);\n"
        line += "        buf[size] = \'\\0\';\n"
        line += "\n"
        line += "        /* Return size of buffer */\n"
        line += "        if (size_ptr)\n"
        line += "        *size_ptr = size;\n"
        line += "\n"
        line += "        /* Return buffer */\n"
        line += "        return buf;\n"
        line += "}\n\n"
        return line


def appendMainStart(line):
        line += "int main(int argc, char const *argv[])\n"
        line += "{\n"
        line += "\n"
        return line


def appendMainEnd(line):
        line += "\treturn 0;\n"
        line += "}\n"
        return line


def appendCLInit(line):
        line += "        /* Get platform */\n"
        line += "        cl_platform_id platform;\n"
        line += "        cl_uint num_platforms;\n"
        line += "        cl_int ret = clGetPlatformIDs(1, &platform, &num_platforms);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: second call to \'clGetPlatformIDs\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"Number of platforms: %d\\n\", num_platforms);\n"
        line += "        printf(\"platform=%p\\n\", platform);\n"
        line += "        \n"
        line += "        /* Get platform name */\n"
        line += "        char platform_name[100];\n"
        line += "        ret = clGetPlatformInfo(platform, CL_PLATFORM_NAME, sizeof platform_name,platform_name, NULL);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clGetPlatformInfo\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"platform.name=\'%s\'\\n\", platform_name);\n"
        line += "        printf(\"\\n\");\n"
        line += "        \n"
        line += "        /* Get device */\n"
        line += "        cl_device_id device;\n"
        line += "        cl_uint num_devices;\n"
        line += "        ret = clGetDeviceIDs(platform, CL_DEVICE_TYPE_CPU, 1, &device, &num_devices);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clGetDeviceIDs\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"Number of devices: %d\\n\", num_devices);\n"
        line += "        printf(\"device=%p\\n\", device);\n"
        line += "        \n"
        line += "        /* Get device name */\n"
        line += "        char device_name[100];\n"
        line += "        ret = clGetDeviceInfo(device, CL_DEVICE_NAME, sizeof(device_name),\n"
        line += "        device_name, NULL);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clGetDeviceInfo\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"device.name=\'%s\'\\n\", device_name);\n"
        line += "        printf(\"\\n\")\n"
        line += "        \n"
        line += "        /* Create a Context Object */\n"
        line += "        cl_context context;\n"
        line += "        context = clCreateContext(NULL, 1, &device, NULL, NULL, &ret);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clCreateContext\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"context=%p\\n\", context)\n"
        line += "        \n"
        line += "        /* Create a Command Queue Object*/\n"
        line += "        cl_command_queue command_queue;\n"
        line += "        command_queue = clCreateCommandQueue(context, device, 0, &ret);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clCreateCommandQueue\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"command_queue=%p\\n\", command_queue);\n"
        line += "        printf(\"\\n\");\n"
        line += "        \n"
        return line


def appendCLFree(line):
        line += "        /* Release a command queue */\n"
        line += "        ret = clReleaseCommandQueue(command_queue);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clReleaseCommandQueue\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        /* Release context */\n"
        line += "        ret = clReleaseContext(context);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clReleaseContext\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        /* Release device */\n"
        line += "        ret = clReleaseDevice(device);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clReleaseDevice\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        return line


def appendCLProgramCreate(line, bin_name):
        line += "        /* Program binary */\n"
        line += "        unsigned char *bin;\n"
        line += "        size_t bin_len;\n"
        line += "        cl_int bin_ret;\n"
        line += "        \n"
        line += "        /* Read program binary */\n"
        line += "        bin = read_buffer(\""
        line += bin_name
        line += "\", &bin_len);\n"
        line += "        \n"
        line += "        /* Create a program */\n"
        line += "        cl_program program;\n"
        line += "        program = clCreateProgramWithBinary(context, 1, device, &bin_len, (unsigned char **)&bin, &bin_ret, &ret);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clCreateProgramWithBinary\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        if (bin_ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: Invalid binary for device\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        printf(\"program=%p\\n\", program);\n"
        line += "        \n"
        line += "        /* Free binary */\n"
        line += "        free(bin);\n"
        line += "        \n"
        line += "        printf(\"program binary loaded\\n\");\n"
        line += "        printf(\"\\n\");\n"
        line += "        \n"
        return line

def appendCLProgramFree(line):
        line += "        /* Release a program */\n"
        line += "        ret = clReleaseProgram(program);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clReleaseProgram\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        return line


def appendCLKernelCreate(line, kernel_name):
        line += "        /* Create a Kernel Object*/\n"
        line += "        cl_kernel kernel;\n"
        line += "        kernel = clCreateKernel(program, \""
        line += kernel_name
        line += "\", &ret);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clCreateKernel\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        line += "        \n"
        line += "        printf(\"kernel=%p\\n\", kernel);\n"
        line += "        printf(\"\\n\");\n"
        line += "        \n"
        return line


def appendCLKernelFree(line):
        line += "        /* Release kernel */\n"
        line += "        ret = clReleaseKernel(kernel);\n"
        line += "        if (ret != CL_SUCCESS)\n"
        line += "        {\n"
        line += "                printf(\"error: call to \'clReleaseKernel\' failed\\n\");\n"
        line += "                exit(1);\n"
        line += "        }\n"
        return line


def appendCLBufferCreate(line, func):
        
        return line


def genHost():
        for func in arithmetic_operator_list:
                func_name = getFuncName(func)
                func_num_params = getFuncNumParams(func)
                for gentype_idx in range(len(func[3])):
                        file_name = "operator_" + func_name + "_"
                        for param_index in range(func_num_params):
                                param_type_list = func[3 + param_index]
                                type_idx = gentype_idx
                                if len(param_type_list) - 1 < gentype_idx:
                                        type_idx = 0
                                file_name += param_type_list[type_idx]
                        func_file = open(file_name + ".c", "w+")
                        line = "// Auto gen by arithmetic_operator_gen.py\n\n"

                        line = appendHeaders(line)
                        line = appendHelperFunc(line)
                        line = appendMainStart(line)
                        line = appendCLInit(line)
                        line = appendCLProgramCreate(line, file_name + ".opt.bin")
                        line = appendCLKernelCreate(line, file_name)
                        line = appendCLKernelFree(line)
                        line = appendCLProgramFree(line)
                        line = appendCLFree(line)
                        line = appendMainEnd(line)

                        func_file.write(line)
                        func_file.close()


def main():
        gen()
        genPre()
        genHost()

if __name__ == "__main__":
        main()
