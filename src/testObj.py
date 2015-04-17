#!/usr/bin/python

import os


class testObj(object):
        """A class to describe a unit test"""
        def __init__(self, name, srcTypes, dstType):
                self.name = name + "_"
                for src in srcTypes:
                        self.name += src
                self.kernelName = self.name
                self.kernelSrc = ""
                self.hostSrc = ""
                self.srcTypes = srcTypes
                self.dstType = dstType

        def getNumSrc(self):
                return len(self.srcTypes)

        def getNumDst(self):
                return len(self.dstType)

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

        def dumpKernel(self, path):
                testDir = path + self.name + "/"
                try:
                    os.stat(testDir)
                except:
                    os.makedirs(testDir)

                kernelFile = open(testDir + self.name + ".cl", "w+")
                kernelFile.write(self.getKernelSrc())
                kernelFile.close()

        def getHostSrcPrefix(self):
                with open("testObjHostPrefix.txt") as hostSrcPrefix:
                        return hostSrcPrefix.read()

        def getHostSrcPostfix(self):
                with open("testObjHostPostfix.txt") as hostSrcPrefix:
                        return hostSrcPrefix.read()

        def getHostSrc(self):
                return self.hostSrc

        def dumpHost(self, path):
                testDir = path + self.name + "/"
                try:
                    os.stat(testDir)
                except:
                    os.makedirs(testDir)

                hostFile = open(testDir + self.name + ".c", "w+")
                hostFile.write(self.getHostSrc())
                hostFile.close()
