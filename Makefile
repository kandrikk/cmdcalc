CC = gcc 
all: main 
 
main: main.o cmdcalc.o print.o cmdcalc.h 
	$(CC) main.o cmdcalc.o print.o -o main 
 
main.o: main.c cmdcalc.h 
	$(CC) -c main.c 
 
cmdcalc.o: cmdcalc.c cmdcalc.h 
	$(CC) -c cmdcalc.c  
 
print.o: print.c cmdcalc.h 
	$(CC) -c print.c 
 
run: main
	./main 41 + 33 111 - 8 22 \* 5 221 % 111 100 + 13 -k 2
 
clean: 
	rm -rf *.o main

	