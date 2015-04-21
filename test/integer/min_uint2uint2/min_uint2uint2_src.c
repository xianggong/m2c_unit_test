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

void write_buffer(char *file_name, const char *buffer, size_t buffer_size)
{
        FILE *f;

        /* Open file */
        f = fopen(file_name, "w+");

        /* Write buffer */
        if(buffer)
                fwrite(buffer, 1, buffer_size, f);

        /* Close file */
        fclose(f);
}

int main(int argc, char const *argv[])
{
        /* Get platform */
        cl_platform_id platform;
        cl_uint num_platforms;
        cl_int ret = clGetPlatformIDs(1, &platform, &num_platforms);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clGetPlatformIDs' failed\n");
                exit(1);
        }
        
        printf("Number of platforms: %d\n", num_platforms);
        printf("platform=%p\n", platform);
        
        /* Get platform name */
        char platform_name[100];
        ret = clGetPlatformInfo(platform, CL_PLATFORM_NAME, sizeof(platform_name), platform_name, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clGetPlatformInfo' failed\n");
                exit(1);
        }
        
        printf("platform.name='%s'\n\n", platform_name);
        
        /* Get device */
        cl_device_id device;
        cl_uint num_devices;
        ret = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, &num_devices);
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
        printf("\n");
        
        /* Create a Context Object */
        cl_context context;
        context = clCreateContext(NULL, 1, &device, NULL, NULL, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateContext' failed\n");
                exit(1);
        }
        
        printf("context=%p\n", context);
        
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

        /* Program source */
        unsigned char *source_code;
        size_t source_length;

        /* Read program from 'min_uint2uint2.cl' */
        source_code = read_buffer("min_uint2uint2.cl", &source_length);

        /* Create a program */
        cl_program program;
        program = clCreateProgramWithSource(context, 1, (const char **)&source_code, &source_length, &ret);

        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateProgramWithSource' failed\n");
                exit(1);
        }
        printf("program=%p\n", program);

        /* Build program */
        ret = clBuildProgram(program, 1, &device, NULL, NULL, NULL);
        if (ret != CL_SUCCESS )
        {
                size_t size;
                char *log;

                /* Get log size */
                clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG,0, NULL, &size);

                /* Allocate log and print */
                log = malloc(size);
                clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG,size, log, NULL);
                printf("error: call to 'clBuildProgram' failed:\n%s\n", log);
                
                /* Free log and exit */
                free(log);
                exit(1);
        }

        printf("program built\n");
        printf("\n");
        
        /* Create a Kernel Object */
        cl_kernel kernel;
        kernel = clCreateKernel(program, "min_uint2uint2", &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clCreateKernel' failed\n");
                exit(1);
        }
        
        /* Create and allocate host buffers */
        size_t num_elem = 10;
        
        /* Create and init host side src buffer 0 */
        cl_uint2 *src_0_host_buffer;
        src_0_host_buffer = malloc(num_elem * sizeof(cl_uint2));
        for (int i = 0; i < num_elem; i++)
                src_0_host_buffer[i] = (cl_uint2){{2, 2}};
        
        /* Create and init device side src buffer 0 */
        cl_mem src_0_device_buffer;
        src_0_device_buffer = clCreateBuffer(context, CL_MEM_READ_ONLY, num_elem * sizeof(cl_uint2), NULL, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: could not create source buffer\n");
                exit(1);
        }        
        ret = clEnqueueWriteBuffer(command_queue, src_0_device_buffer, CL_TRUE, 0, num_elem * sizeof(cl_uint2), src_0_host_buffer, 0, NULL, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clEnqueueWriteBuffer' failed\n");
                exit(1);
        }

        /* Create and init host side src buffer 1 */
        cl_uint2 *src_1_host_buffer;
        src_1_host_buffer = malloc(num_elem * sizeof(cl_uint2));
        for (int i = 0; i < num_elem; i++)
                src_1_host_buffer[i] = (cl_uint2){{2, 2}};
        
        /* Create and init device side src buffer 1 */
        cl_mem src_1_device_buffer;
        src_1_device_buffer = clCreateBuffer(context, CL_MEM_READ_ONLY, num_elem * sizeof(cl_uint2), NULL, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: could not create source buffer\n");
                exit(1);
        }        
        ret = clEnqueueWriteBuffer(command_queue, src_1_device_buffer, CL_TRUE, 0, num_elem * sizeof(cl_uint2), src_1_host_buffer, 0, NULL, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clEnqueueWriteBuffer' failed\n");
                exit(1);
        }

        /* Create host dst buffer */
        cl_uint2 *dst_host_buffer;
        dst_host_buffer = malloc(num_elem * sizeof(cl_uint2));
        memset((void *)dst_host_buffer, 1, num_elem * sizeof(cl_uint2));

        /* Create device dst buffer */
        cl_mem dst_device_buffer;
        dst_device_buffer = clCreateBuffer(context, CL_MEM_WRITE_ONLY, num_elem *sizeof(cl_uint2), NULL, &ret);
        if (ret != CL_SUCCESS)
        {
                printf("error: could not create dst buffer\n");
                exit(1);
        }
        
        /* Set kernel arguments */
        ret = CL_SUCCESS;
        ret |= clSetKernelArg(kernel, 0, sizeof(cl_mem), &src_0_device_buffer);
        ret |= clSetKernelArg(kernel, 1, sizeof(cl_mem), &src_1_device_buffer);
        ret |= clSetKernelArg(kernel, 2, sizeof(cl_mem), &dst_device_buffer);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clSetKernelArg' failed\n");
                exit(1);
        }

        /* Launch the kernel */
        size_t global_work_size = num_elem;
        size_t local_work_size = num_elem;
        ret = clEnqueueNDRangeKernel(command_queue, kernel, 1, NULL, &global_work_size, &local_work_size, 0, NULL, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clEnqueueNDRangeKernel' failed\n");
                exit(1);
        }

        /* Wait for it to finish */
        clFinish(command_queue);

        /* Read results from GPU */
        ret = clEnqueueReadBuffer(command_queue, dst_device_buffer, CL_TRUE,0, num_elem * sizeof(cl_uint2), dst_host_buffer, 0, NULL, NULL);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clEnqueueReadBuffer' failed\n");
                exit(1);
        }

        /* Dump dst buffer to file */
        char dump_file[100];
        sprintf((char *)&dump_file, "%s.result", argv[0]);
        write_buffer(dump_file, (const char *)dst_host_buffer, num_elem * sizeof(cl_uint2));
        printf("Result dumped to %s\n", dump_file);
        /* Free host dst buffer */
        free(dst_host_buffer);

        /* Free device dst buffer */
        ret = clReleaseMemObject(dst_device_buffer);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseMemObject' failed\n");
                exit(1);
        }
        
        /* Free host side src buffer 0 */
        free(src_0_host_buffer);

        /* Free device side src buffer 0 */
        ret = clReleaseMemObject(src_0_device_buffer);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseMemObject' failed\n");
                exit(1);
        }

        /* Free host side src buffer 1 */
        free(src_1_host_buffer);

        /* Free device side src buffer 1 */
        ret = clReleaseMemObject(src_1_device_buffer);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseMemObject' failed\n");
                exit(1);
        }

        /* Release kernel */
        ret = clReleaseKernel(kernel);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseKernel' failed\n");
                exit(1);
        }

        /* Release program */
        ret = clReleaseProgram(program);
        if (ret != CL_SUCCESS)
        {
                printf("error: call to 'clReleaseProgram' failed\n");
                exit(1);
        }
        
        /* Release command queue */
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
                
        return 0;
}