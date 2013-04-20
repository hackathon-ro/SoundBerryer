CFLAGS:= -lm -std=c99 -Wall -Wextra
CC=gcc

.PHONY: all clean

all: pifm

pifm: pifm.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf *.o pifm

