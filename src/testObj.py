#!/usr/bin/python

import os
import testType


class testObj(object):

        """ A class to describe a unit test """

        def __init__(self, name, srcTypes, dstType):
                self.name = name + "_"
                for src in srcTypes:
                        self.name += src
                self.kernelName = self.name
                self.kernelSrc = ""
                self.srcTypes = srcTypes
                self.dstType = dstType

        """ Helper functions """

        def getNumSrc(self):
                return len(self.srcTypes)

        def getNumDst(self):
                return len(self.dstType)

        """ Functions for kernel program """

        def getStringParamSrc(self):
                srcParam = ""
                for idx in range(self.getNumSrc()):
                        srcParam += "__global " + self.srcTypes[idx] + " *src_"
                        srcParam += str(idx)
                        srcParam += ", "
                return srcParam

        def getStringParamDst(self):
                dstParam = "__global " + self.dstType[0] + "* dst"
                return dstParam

        def getKernelSrcPrefix(self):
                kernelSrcPrefix = "// Auto generated kernel\n\n"
                kernelSrcPrefix += "__kernel void " + self.kernelName + "("
                kernelSrcPrefix += self.getStringParamSrc()
                kernelSrcPrefix += self.getStringParamDst()
                kernelSrcPrefix += ")\n{\n"
                kernelSrcPrefix += "\tint gid = get_global_id(0);\n"
                kernelSrcPrefix += "\tdst[gid] = "
                return kernelSrcPrefix

        def getKernelSrcMain(self):
                kernelSrcMain = "\n"
                return kernelSrcMain

        def getKernelSrcPostfix(self):
                return "}\n"

        def getKernelSrc(self):
                return self.kernelSrc

        def dumpKernelProgram(self, path):
                testDir = path + self.name + "/"
                try:
                    os.stat(testDir)
                except:
                    os.makedirs(testDir)

                kernelFile = open(testDir + self.name + ".cl", "w+")
                kernelFile.write(self.getKernelSrc())
                kernelFile.close()

        """ Functions for host program """

        def getHostSrcPrefix(self):
                with open("clPrefix.txt") as hostSrcPrefix:
                        return hostSrcPrefix.read()

        def getHostSrcPostfix(self):
                with open("clPostfix.txt") as hostSrcPrefix:
                        return hostSrcPrefix.read()

        def getHostProgramKernelBin(self):
                program = ""
                with open("clProgramKernelBin.txt") as hostSrc:
                        program = hostSrc.read()
                return program.replace("KERNEL_NAME", self.kernelName)

        def getHostProgramKernelSrc(self):
                program = ""
                with open("clProgramKernelSrc.txt") as hostSrc:
                        program = hostSrc.read()
                return program.replace("KERNEL_NAME", self.kernelName)

        def getHostDataType(self, type):
                hostType = "cl_" + type
                return hostType

        def getHostBufferCreate(self, srcType, srcIdx, srcInitValue):
                bufferSrc = ""
                with open("clBufferCreate.txt") as hostSrc:
                        bufferSrc = hostSrc.read()
                hostType = self.getHostDataType(srcType)
                bufferSrc = bufferSrc.replace("HOST_DATA_TYPE", hostType)
                bufferSrc = bufferSrc.replace("SRC_IDX", str(srcIdx))
                bufferSrc = bufferSrc.replace("HOST_INIT_VALUE", srcInitValue)
                return bufferSrc

        def getHostBuffersInit(self):
                buffer = ""
                with open("clBuffersInit.txt") as file:
                        buffer = file.read()
                bufferCreate = ""
                for srcIdx in range(self.getNumSrc()):
                        srcType = self.srcTypes[srcIdx]
                        srcInitValue = testType.getInitValue(srcType, 2.0)
                        bufferCreate += self.getHostBufferCreate(srcType,
                                                                 srcIdx,
                                                                 srcInitValue)
                hostDstType = self.getHostDataType(str(self.dstType[0]))
                buffer = buffer.replace("HOST_DST_DATA_TYPE", hostDstType)
                buffer = buffer.replace("NUM_ELEM", str(10))
                return buffer.replace("SRC_BUFFER_INIT", bufferCreate)

        def getHostSetKernelArg(self, srcIdx):
                bufferSrc = ""
                with open("clSetKernelArg.txt") as hostSrc:
                        bufferSrc = hostSrc.read()
                bufferSrc = bufferSrc.replace("SRC_IDX", str(srcIdx))
                return bufferSrc + "\n"

        def getHostLaunchKernel(self):
                buffer = ""
                with open("clLaunchKernel.txt") as file:
                        buffer = file.read()
                bufferSetArgs = ""
                for srcIdx in range(self.getNumSrc()):
                        bufferSetArgs += self.getHostSetKernelArg(srcIdx)
                buffer = buffer.replace("SET_KERNEL_ARGS", bufferSetArgs)
                buffer = buffer.replace("DST_IDX", str(self.getNumSrc()))
                hostDstType = self.getHostDataType(str(self.dstType[0]))
                buffer = buffer.replace("HOST_DST_DATA_TYPE", hostDstType)
                return buffer

        def getHostBufferFree(self, srcIdx):
                bufferSrc = ""
                with open("clBufferFree.txt") as hostSrc:
                        bufferSrc = hostSrc.read()
                bufferSrc = bufferSrc.replace("SRC_IDX", str(srcIdx))
                return bufferSrc

        def getHostBuffersDestroy(self):
                buffer = ""
                with open("clBuffersDestroy.txt") as file:
                        buffer = file.read()
                bufferDestroy = ""
                for srcIdx in range(self.getNumSrc()):
                        bufferDestroy += self.getHostBufferFree(srcIdx)
                return buffer.replace("SRC_BUFFER_DESTROY", bufferDestroy)

        def getHostMainReadSrc(self):
                main = ""
                main += self.getHostProgramKernelSrc()
                main += self.getHostBuffersInit()
                main += self.getHostLaunchKernel()
                main += self.getHostBuffersDestroy()
                return main

        def getHostMainReadBin(self):
                main = ""
                main += self.getHostProgramKernelBin()
                main += self.getHostBuffersInit()
                main += self.getHostLaunchKernel()
                main += self.getHostBuffersDestroy()
                return main

        def getHostProgramReadSrc(self):
                hostProgram = ""
                hostProgram += self.getHostSrcPrefix()
                hostProgram += self.getHostMainReadSrc()
                hostProgram += self.getHostSrcPostfix()
                return hostProgram

        def getHostProgramReadBin(self):
                hostProgram = ""
                hostProgram += self.getHostSrcPrefix()
                hostProgram += self.getHostMainReadBin()
                hostProgram += self.getHostSrcPostfix()
                return hostProgram

        def dumpHostProgramReadSrc(self, path):
                testDir = path + self.name + "/"
                try:
                    os.stat(testDir)
                except:
                    os.makedirs(testDir)

                hostFile = open(testDir + self.name + "_src.c", "w+")
                hostFile.write(self.getHostProgramReadSrc())
                hostFile.close()

        def dumpHostProgramReadBin(self, path):
                testDir = path + self.name + "/"
                try:
                    os.stat(testDir)
                except:
                    os.makedirs(testDir)

                hostFile = open(testDir + self.name + "_bin.c", "w+")
                hostFile.write(self.getHostProgramReadBin())
                hostFile.close()

        def dumpHostProgram(self, path):
                self.dumpHostProgramReadSrc(path)
                self.dumpHostProgramReadBin(path)
