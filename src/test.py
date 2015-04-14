#!/usr/bin/python

import os
import subprocess
import re


def runCommand(command):
        p = subprocess.Popen(command,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT)
        p.wait()
        return iter(p.stdout.readline, b'')


def dumpRunCommand(command, dump_file_name, postfix):
        dumpFile = open(dump_file_name + postfix, "w+")
        dumpFile.write(command + "\n")
        for line in runCommand(command.split()):
                dumpFile.write(line)


def rnm_ir(file_name):
        # Append all unnamed variable with prefix 'tmp_'
        ir_file_name = file_name + ".ll"
        if os.path.isfile(ir_file_name):
                fo = open(ir_file_name, "rw+")
                lines = fo.readlines()
                fo.seek(0)
                fo.truncate()
                for line in lines:
                        # Rename all unnamed variables
                        line = re.sub('\%([0-9]+)',
                                      r'%tmp_\1',
                                      line.rstrip())
                        # Also rename branch name
                        line = re.sub('(\;\ \<label\>\:)([0-9]+)',
                                      r'tmp_\2:',
                                      line.rstrip())
                        fo.write(line + '\n')


def gen_ir(file_name):
        # Directories
        root_dir = '../../'
        header_dir = root_dir + "inc/"

        # Headers
        header = " -I " + header_dir
        header += " -include " + header_dir + "m2c_buildin_fix.h "
        header += " -include " + header_dir + "clc/clc.h "
        header += " -D cl_clang_storage_class_specifiers "

        gen_ir = "clang -S -emit-llvm -O0 -target r600-- -mcpu=verde "
        cmd_gen_ir = gen_ir + header + file_name + ".cl"
        dumpRunCommand(cmd_gen_ir, file_name, ".stdout")


def asm_ir(file_name):
    if os.path.isfile(file_name + ".ll"):
        # Command to assemble IR to bitcode
        gen_bc = "llvm-as "
        gen_bc_src = file_name + ".ll"
        gen_bc_dst = file_name + ".bc"
        cmd_gen_bc = gen_bc + gen_bc_src + " -o " + gen_bc_dst
        runCommand(cmd_gen_bc.split())


def opt_bc(file_name):
    if os.path.isfile(file_name + ".bc"):
        # Command to optmize bitcode
        opt_bc = "opt --mem2reg "
        opt_ir_src = file_name + ".bc"
        opt_ir_dst = file_name + ".opt.bc"
        cmd_opt_bc = opt_bc + opt_ir_src + " -o " + opt_ir_dst
        runCommand(cmd_opt_bc.split())


def dis_bc(file_name):
    if os.path.isfile(file_name + ".bc"):
        # Command to disassemble bitcode
        dis_bc = "llvm-dis "
        dis_ir_src = file_name + ".opt.bc"
        dis_ir_dst = file_name + ".opt.ll"
        cmd_dis_bc = dis_bc + dis_ir_src + " -o " + dis_ir_dst
        runCommand(cmd_dis_bc.split())


def amd_cpl(file_name):
    if os.path.isfile(file_name + ".cl"):
        # Command to disassemble bitcode
        amd_cpl = "../../../multi2sim-4.2/bin/m2c --amd"
        amd_cpl += " --amd-dump-all --amd-device 13 "
        cmd_amd_cpl = amd_cpl + file_name + ".cl"
        cmd_amd_cpl_cleanup = "rm -rf /tmp/*.clp && rm -rf /tmp/*_amd_files"
        runCommand(cmd_amd_cpl.split())
        runCommand(cmd_amd_cpl_cleanup.split())


def m2c_gen(file_name):
    if os.path.isfile(file_name + ".opt.bc"):
        # Command to disassemble bitcode
        m2c_gen = "m2c --llvm2si "
        m2c_gen_src = file_name + ".opt.bc"
        # dis_ir_dst = file_name + ".opt.ll"
        cmd_m2c_gen = m2c_gen + m2c_gen_src
        # runCommand(cmd_m2c_gen.split())
        dumpRunCommand(cmd_m2c_gen, file_name, ".m2cOut")


def main():

        # Commands

        for file in os.listdir("./"):
                if file.endswith(".cl"):
                        file_name = os.path.splitext(file)[0]

                        # Execute commands
                        amd_cpl(file_name)
                        gen_ir(file_name)
                        rnm_ir(file_name)
                        asm_ir(file_name)
                        opt_bc(file_name)
                        dis_bc(file_name)
                        m2c_gen(file_name)

if __name__ == "__main__":
        main()
