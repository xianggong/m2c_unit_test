AMDAPPSDK_ROOT = /home/xgong/Develop/amdappsdk291/AMDAPPSDK-2.9-1/
M2C_CC = /home/xgong/Develop/apps/m2s-svn/bin/m2c
AMD_CC = /home/xgong/Develop/multi2sim-4.2/bin/m2c

CC = gcc
CC_FLAG = -Werror -Wall -g -std=c99
CC_INC = -I $(AMDAPPSDK_ROOT)include/
CC_LIB = -L $(AMDAPPSDK_ROOT)lib/x86_64/ -lOpenCL
