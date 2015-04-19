include ../../../Makefile.inc

CLC_ROOT = ../../../inc

all: exe_read_src exe_read_bin amd_compile m2c_compile

exe_read_src:
	$(CC) $(CC_FLAG) *src.c -o exe_read_src $(CC_INC) $(CC_LIB)

exe_read_bin:
	$(CC) $(CC_FLAG) *bin.c -o exe_read_bin $(CC_INC) $(CC_LIB)

amd_compile:
	$(AMD_CC) --amd --amd-dump-all --amd-device 13 native_sqrt_float.cl > native_sqrt_float.amdcc.log 2>&1
	rm -rf /tmp/*.clp && rm -rf /tmp/*_amd_files

m2c_compile:
	python compile.py

clean:
	rm -rf exe_read_src exe_read_bin *.ll *.log *files *bin *.s *.bc
