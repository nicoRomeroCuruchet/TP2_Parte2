CC=cc
CFLAGS= -std=c11 -Wall -Wextra -pedantic -O0 -g -lm -Wno-unused-variable -Wno-unused-parameter
NASM=nasm
NASMFLAGS=-f elf64 -g -F DWARF

all: main tester

OBJS := checkpoint_c.o checkpoint_asm.o

tester: tester.c $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

main: main.c $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

tester.o: tester.c checkpoint.h test-utils.h
	$(CC) $(CFLAGS) -c $< -o $@


checkpoint_c.o: checkpoint_c.c checkpoint_c.h
	$(CC) $(CFLAGS) -c $< -o $@


checkpoint_asm.o: checkpoint.asm
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	rm -f *.o
	rm -f main tester
	rm -f salida.propios.*

