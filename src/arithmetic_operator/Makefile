all: frontend

frontend:
	make clean
	python arithmetic_operator_gen.py
	cp ../test.py ./
	python test.py
	rm -rf test.py

clean:
	rm -rf *.cl *.c *.s *.ll *.bc *.stdout *.m2cOut *.m2cBinOut *.bin *m2s_files
