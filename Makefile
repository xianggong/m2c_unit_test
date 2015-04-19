all: genUnitTest 

genUnitTest:
	cd src && make

clean:
	cd src && make clean
