all: frontend

frontend:
	python integer_func_gen.py
	cp ../test.py ./
	python test.py
	rm test.py

clean:
	rm -rf *.cl *.s *.ll *.bc *.stdout *.bin *m2s_files
