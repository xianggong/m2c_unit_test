// Auto gen by arithmetic_operator_gen.py

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <CL/cl.h>

unsigned char *read_buffer(char *file_name, size_t *size_ptr)
{
        FILE *f;
        unsigned char *buf;
        size_t size;

        /* Open file */
        f = fopen(file_name, "rb");

        if (!f)
        return NULL;

        /* Obtain file size */
        fseek(f, 0, SEEK_END);
        size = ftell(f);
        fseek(f, 0, SEEK_SET);

        /* Allocate and read buffer */
        buf = malloc(size + 1);
        fread(buf, 1, size, f);
        buf[size] = '\0';

        /* Return size of buffer */
        if (size_ptr)
        *size_ptr = size;

        /* Return buffer */
        return buf;
}

int main(int argc, char const *argv[])
{

        /* Get platform */
        cl_platform_id platform;
        cl_uint num_platforms;
        cl_int ret = clGetPlatformIDs(1, &platform, &num_platforms);
        if (ret != CL_SUCCESS)
        {
                printf("error: second call to 'clGetPlatformIDs' failed\n");
                exit(1);
        }
        
        printf("Number of platforms: %d\n", num_platforms);
        printf("platform=%p\n", platform);
        
        /* Get platform name */
        char platform_name[100];
        ret = clGetPlatformInfo(platform, CL_PLATFORM_NAME, sizeof platform_name,platform_name, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clGetPlatformInfo' failed\n");
                exit(1);
        }
        
        printf("platform.name='%s'\n", platform_name);
        printf("\n");
        
        /* Get device */
        cl_device_id device;
        cl_uint num_devices;
        ret = clGetDeviceIDs(platform, CL_DEVICE_TYPE_CPU, 1, &device, &num_devices);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clGetDeviceIDs' failed\n");
                exit(1);
        }
        
        printf("Number of devices: %d\n", num_devices);
        printf("device=%p\n", device);
        
        /* Get device name */
        char device_name[100];
        ret = clGetDeviceInfo(device, CL_DEVICE_NAME, sizeof(device_name),
        device_name, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clGetDeviceInfo' failed\n");
                exit(1);
        }
        
        printf("device.name='%s'\n", device_name);
        printf("\n")
        
        /* Create a Context Object */
        cl_context context;
        context = clCreateContext(NULL, 1, &device, NULL, NULL, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateContext' failed\n");
                exit(1);
        }
        
        printf("context=%p\n", context)
        
        /* Create a Command Queue Object*/
        cl_command_queue command_queue;
        command_queue = clCreateCommandQueue(context, device, 0, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateCommandQueue' failed\n");
                exit(1);
        }
        
        printf("command_queue=%p\n", command_queue);
        printf("\n");
        
        /* Program binary */
        unsigned char *bin;
        size_t bin_len;
        cl_int bin_ret;
        
        /* Read program binary */
        bin = read_buffer("operator_post_increment_ushort16.opt.bin", &bin_len);
        
        /* Create a program */
        cl_program program;
        program = clCreateProgramWithBinary(context, 1, device, &bin_len, (unsigned char **)&bin, &bin_ret, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateProgramWithBinary' failed\n");
                exit(1);
        }
        if (bin_ret != CL_SUCCESS)
        {
                printf("error: Invalid binary for device\n");
                exit(1);
        }
        printf("program=%p\n", program);
        
        /* Free binary */
        free(bin);
        
        printf("program binary loaded\n");
        printf("\n");
        
        /* Create a Kernel Object*/
        cl_kernel kernel;
        kernel = clCreateKernel(program, "operator_post_increment_ushort16", &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateKernel' failed\n");
                exit(1);
        }
        
        printf("kernel=%p\n", kernel);
        printf("\n");
        
        /* Release kernel */
        ret = clReleaseKernel(kernel);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseKernel' failed\n");
                exit(1);
        }
        /* Release a program */
        ret = clReleaseProgram(program);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseProgram' failed\n");
                exit(1);
        }
        
        /* Release a command queue */
        ret = clReleaseCommandQueue(command_queue);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseCommandQueue' failed\n");
                exit(1);
        }
        
        /* Release context */
        ret = clReleaseContext(context);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseContext' failed\n");
                exit(1);
        }
        
        /* Release device */
        ret = clReleaseDevice(device);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseDevice' failed\n");
                exit(1);
        }
        
	return 0;
}
