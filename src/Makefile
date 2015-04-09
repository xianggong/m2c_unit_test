all: frontend

frontend:
	python workitem_func_gen.py
	python math_func_gen.py
	python test.py

clean:
	rm -rf *.cl *.s *.ll *.bc *.stdout
