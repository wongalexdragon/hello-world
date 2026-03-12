# Makefile for compiling static library

CC = gcc
CFLAGS = -Wall -Werror -fPIC

all: libhello.a

libhello.a: hello.o
	ar rcs $@ $^

hello.o: hello.c hello.h
	$(CC) $(CFLAGS) -c hello.c

clean:
	rm -f *.o *.a
