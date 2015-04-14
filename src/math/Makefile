all: frontend

frontend:
	python math_func_gen.py
	cp ../test.py ./
	python test.py
	rm -rf test.py

clean:
	rm -rf *.cl *.s *.ll *.bc *.stdout *.m2cOut *.bin *m2s_files
