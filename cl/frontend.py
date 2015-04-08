#!/usr/bin/python

import os
import subprocess

# Directories
root_dir = '../'
header_dir = root_dir + "inc/"

# Commands
gen_ir = "clang -S -emit-llvm -O0 "
gen_bc = "llvm-as "
opt_ir = "opt --mem2reg "

# Headers
header = " -I " + header_dir
header += " -include " + header_dir + "m2c_buildin_fix.h "
header += " -include " + header_dir + "clc/clc.h "
header += " -D cl_clang_storage_class_specifiers "


def runCommand(command):
        p = subprocess.Popen(command,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.STDOUT)
        return iter(p.stdout.readline, b'')


def dumpRunCommand(command, dump_file_name):
        dumpFile = open(dump_file_name + ".dump", "w+")
        for line in runCommand(command.split()):
                dumpFile.write(line)


def main():
        for file in os.listdir("./"):
                if file.endswith(".cl"):
                        file_name = os.path.splitext(file)[0]

                        command_gen_ir = gen_ir + header + file
                        command_opt_bc = gen_bc + file_name + ".ll"

                        dumpRunCommand(command_gen_ir, file_name)
                        runCommand(command_opt_bc.split())


if __name__ == "__main__":
        main()
