#!/usr/bin/python

from testObj import testObj
import testType


class testOperator(testObj):
        """docstring for testOperator"""
        def __init__(self,
                     srcTypes, dstType,
                     operator, operatorName,
                     usage):
                super(testOperator, self).__init__(operatorName,
                                                   srcTypes,
                                                   dstType)
                self.operator = operator
                self.operatorName = operatorName
                self.usage = usage.split("-")
                # Check if explicit casting is needed
                if srcTypes[0] == dstType[0]:
                        self.isCastNeeded = False
                else:
                        self.isCastNeeded = True

        def getKernelSrcMain(self):
                main = ""
                # Append cast if needed
                if self.isCastNeeded:
                        main += "(" + self.dstType[0] + ")("

                for elem in self.usage:
                        if elem == "s0":
                                main += " src_0[gid] "
                        elif elem == "op":
                                main += self.operator
                        elif elem == "s1":
                                main += " src_1[gid]"

                # Append cast if needed
                if self.isCastNeeded:
                        main += ");\n"
                else:
                        main += ";\n"

                return main

        def getKernelSrc(self):
                self.kernelSrc += self.getKernelSrcPrefix()
                self.kernelSrc += self.getKernelSrcMain()
                self.kernelSrc += self.getKernelSrcPostfix()
                return self.kernelSrc

        def getHostProgramKernelCreate(self):
                program = ""
                with open("testObjHostProgramKernel.txt") as hostSrc:
                        program = hostSrc.read()
                return program.replace("KERNEL_NAME", self.kernelName)

        def getHostDataType(self, type):
                hostType = "cl_" + type
                return hostType

        def getHostBufferCreate(self, srcType, srcIdx, srcInitValue):
                bufferSrc = ""
                with open("testObjHostBufferCreate.txt") as hostSrc:
                        bufferSrc = hostSrc.read()
                hostType = self.getHostDataType(srcType)
                bufferSrc = bufferSrc.replace("HOST_DATA_TYPE", hostType)
                bufferSrc = bufferSrc.replace("SRC_IDX", str(srcIdx))
                bufferSrc = bufferSrc.replace("HOST_INIT_VALUE", srcInitValue)
                return bufferSrc

        def getHostBufferInit(self):
                buffer = ""
                with open("testObjHostBufferInit.txt") as file:
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
                return buffer.replace("SRC_BUFFER_INIT", bufferCreate)

        def getHostSetKernelArg(self, srcIdx):
                bufferSrc = ""
                with open("testObjHostSetKernelArg.txt") as hostSrc:
                        bufferSrc = hostSrc.read()
                bufferSrc = bufferSrc.replace("SRC_IDX", str(srcIdx))
                return bufferSrc + "\n"

        def getHostLaunchKernel(self):
                buffer = ""
                with open("testObjHostLaunchKernel.txt") as file:
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
                with open("testObjHostBufferFree.txt") as hostSrc:
                        bufferSrc = hostSrc.read()
                bufferSrc = bufferSrc.replace("SRC_IDX", str(srcIdx))
                return bufferSrc

        def getHostBufferDestroy(self):
                buffer = ""
                with open("testObjHostBufferDestroy.txt") as file:
                        buffer = file.read()
                bufferDestroy = ""
                for srcIdx in range(self.getNumSrc()):
                        bufferDestroy += self.getHostBufferFree(srcIdx)
                return buffer.replace("SRC_BUFFER_DESTROY", bufferDestroy)

        def getHostMain(self):
                main = ""
                main += self.getHostProgramKernelCreate()
                main += self.getHostBufferInit()
                main += self.getHostLaunchKernel()
                main += self.getHostBufferDestroy()
                return main

        def getHostSrc(self):
                self.hostSrc += self.getHostSrcPrefix()
                self.hostSrc += self.getHostMain()
                self.hostSrc += self.getHostSrcPostfix()
                return self.hostSrc
