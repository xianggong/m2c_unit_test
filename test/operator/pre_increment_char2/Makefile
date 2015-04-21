include ../../../Makefile.inc

CLC_ROOT = ../../../inc

all: exe_src exe_bin amd_compile m2c_compile

exe_src:
	-$(CC) $(CC_FLAG) *src.c -o exe_src $(CC_INC) $(CC_LIB) > pre_increment_char2.exe_src.log 2>&1

exe_bin:
	-$(CC) $(CC_FLAG) *bin.c -o exe_bin $(CC_INC) $(CC_LIB) > pre_increment_char2.exe_bin.log 2>&1

amd_compile:
	-$(AMD_CC) --amd --amd-dump-all --amd-device 13 pre_increment_char2.cl > pre_increment_char2.amdcc.log 2>&1
	-rm -rf /tmp/*.clp && rm -rf /tmp/*_amd_files

m2c_compile:
	-python compile.py

clean:
	rm -rf exe_src exe_bin *.ll *.log *files *bin *.s *.bc
