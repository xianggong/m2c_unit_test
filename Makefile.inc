AMDAPPSDK_ROOT = /home/xgong/Develop/amdappsdk291/AMDAPPSDK-2.9-1/
M2S_ROOT = /home/xgong/Develop/apps/m2s-svn/
M2C_CC = $(M2S_ROOT)bin/m2c
M2S_LIB= -L $(M2S_ROOT)/lib -lm2s-opencl
AMD_CC = /home/xgong/Develop/multi2sim-4.2/bin/m2c
M2S = /home/xgong/Develop/multi2sim-4.2/bin/m2s

CC = gcc
CC_FLAG = -Werror -Wall -g -std=c99
CC_INC = -I $(AMDAPPSDK_ROOT)include/
CC_LIB = -L $(AMDAPPSDK_ROOT)lib/x86_64/ -lOpenCL
