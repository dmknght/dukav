all:
	mkdir -p bin/
	gcc -std=c99 examples/example_1.c -o bin/example_1 -lduktape -lm