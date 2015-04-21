include ../../../Makefile.inc

CLC_ROOT = ../../../inc

all: exe_src exe_src_m2s exe_bin amd_compile m2c_compile m2s

exe_src:
	-$(CC) $(CC_FLAG) *src.c -o exe_src $(CC_INC) $(CC_LIB) > min_intint.exe_src.log 2>&1

exe_src_m2s:
	-$(CC) $(CC_FLAG) -m32 *src.c -o exe_src_m2s $(CC_INC) $(M2S_LIB) > min_intint.exe_src_m2s.log 2>&1

exe_bin:
	-$(CC) $(CC_FLAG) *bin.c -o exe_bin $(CC_INC) $(CC_LIB) > min_intint.exe_bin.log 2>&1

amd_compile:
	-$(AMD_CC) --amd --amd-dump-all --amd-device 11 min_intint.cl > min_intint.amdcc.log 2>&1
	-rm -rf /tmp/*.clp && rm -rf /tmp/*_amd_files

m2c_compile:
	-python compile.py

m2s:
	-M2S_OPENCL_BINARY=./min_intint.opt.bin $(M2S) --si-sim functional ./exe_src_m2s > m2s.log 2>&1

clean:
	rm -rf exe_src exe_src_m2s exe_bin *.ll *.log *files *bin *.s *.bc
