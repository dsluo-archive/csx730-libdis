
main: main.o
	gcc -o main main.o

main.o: main.s
	as --gstabs+ -o main.o main.s

main.s: main.c
	gcc -std=c17 --pedantic-errors -Wall -g -O0 -S main.c

clean:
	rm -f main
	rm -f main.o
	rm -f main.s

