all: frontend

frontend:
	python arithmetic_operator_gen.py
	cp ../test.py ./
	python test.py
	rm -rf test.py

clean:
	rm -rf *.cl *.s *.ll *.bc *.stdout *.bin *m2s_files
