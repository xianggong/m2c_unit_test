all: frontend

frontend:
	python workitem_func_gen.py
	python math_func_gen.py
	python integer_func_gen.py
	python common_func_gen.py
	python relational_func_gen.py
	python test.py

clean:
	rm -rf *.cl *.s *.ll *.bc *.stdout
